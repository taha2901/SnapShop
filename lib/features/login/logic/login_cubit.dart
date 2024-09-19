import 'package:flutter/widgets.dart';
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

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (loginResponse)async {
        await saveUserToken(loginResponse.userData?.token ?? '');
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
    
  }
  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
