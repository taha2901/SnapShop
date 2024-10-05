// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:snap_shop/core/helpers/constants.dart';
// import 'package:snap_shop/core/helpers/shared_pref_helper.dart';
// import 'package:snap_shop/core/networking/dio_factory.dart';
// import 'package:snap_shop/features/login/logic/login_state.dart';
// import '../data/model/login_request_body.dart';
// import '../data/repo/login_repo.dart';

// class LoginCubit extends Cubit<LoginState> {
//   final LoginRepo _loginRepo;
//   LoginCubit(this._loginRepo) : super(const LoginState.initial());

//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   final formKey = GlobalKey<FormState>();

  

//   void emitLoginState() async {
//     emit(const LoginState.loading());
//     final response = await _loginRepo.login(
//       LoginRequestBody(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       ),
//     );

//     response.when(
//       success: (loginResponse) async {
//         await saveUserToken(loginResponse.userData?.token ?? '');
//         await saveUserPassword(passwordController.text.trim());
//         currentPassword =
//             await SharedPrefHelper.getString(SharedPrefKeys.userPassword);
//         emit(LoginState.success(loginResponse));
//       },
//       failure: (error) {
//         emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
//       },
//     );
//   }



//   Future<void> saveUserToken(String token) async {
//     await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
//     DioFactory.setTokenIntoHeaderAfterLogin(token);
//   }

//   Future<void> saveUserPassword(String password) async {
//     await SharedPrefHelper.setData(SharedPrefKeys.userPassword, password);
//   }
// }


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/helpers/constants.dart';
import 'package:snap_shop/core/helpers/shared_pref_helper.dart';
import 'package:snap_shop/core/networking/dio_factory.dart';
import 'package:snap_shop/features/login/logic/login_state.dart';
import '../data/model/login_request_body.dart';
import '../data/repo/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  /// تسجيل الدخول باستخدام API
  void emitLoginState() async {
  emit(const LoginState.loading());
  
  final response = await _loginRepo.login(
    LoginRequestBody(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    ),
  );

  response.when(
    success: (loginResponse) async {
      if (loginResponse.userData?.token != null && loginResponse.userData!.token!.isNotEmpty) {
        await saveUserToken(loginResponse.userData!.token!);
        await saveUserPassword(passwordController.text.trim());
        emit(LoginState.success(loginResponse));
      } else {
        emit(const LoginState.error(error: 'Login failed: Invalid token'));
      }
    },
    failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? 'Login failed'));
    },
  );
}


  /// تسجيل الدخول باستخدام Google
  Future<void> signInWithGoogle() async {
    try {
      emit(const LoginState.loading());
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        emit(const LoginState.error(error: 'Google sign-in aborted'));
        return;
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // تسجيل الدخول باستخدام Firebase
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      final String? token = await userCredential.user?.getIdToken();

      if (token != null) {
        // حفظ التوكن في SharedPreferences بنفس طريقة توكن الـ API
        await saveUserToken(token);
        emit(LoginState.success(userCredential));
      } else {
        emit(const LoginState.error(error: 'Failed to retrieve token'));
      }
    } catch (e) {
      emit(LoginState.error(error: e.toString()));
    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

  Future<void> saveUserPassword(String password) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userPassword, password);
  }
}
