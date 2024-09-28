import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/login/logic/login_cubit.dart';
import 'package:snap_shop/features/login/ui/widget/dont_have_account_text.dart';
import 'package:snap_shop/features/login/ui/widget/login_bloc_listenter.dart';

import '../../../core/widget/app_text_button.dart';
import 'widget/email_and_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     Future signInWithGoogle() async {
//       // Trigger the authentication flow
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//       if (googleUser == null) {
//         return;
//       }

//       // Obtain the auth details from the request
//       final GoogleSignInAuthentication? googleAuth =
//           await googleUser?.authentication;

//       // Create a new credential
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth?.accessToken,
//         idToken: googleAuth?.idToken,
//       );

//       // Once signed in, return the UserCredential
//       await FirebaseAuth.instance.signInWithCredential(credential);
//       context.pushNamed(Routers.home);
//     }

//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Sign in',
//                   style: TextStyles.font24BlackBold,
//                 ),
//                 verticalSpace(30),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const EmailAndPassword(),
//                     verticalSpace(24),
//                     AppTextButton(
//                       buttonText: 'Continue',
//                       textStyle: TextStyles.font16WhiteSemiBold,
//                       onPressed: () {
//                         validateThenDoLogin(context);
//                       },
//                     ),
//                     verticalSpace(24),
//                     const DontHaveAccountText(),
//                     verticalSpace(24),
//                     verticalSpace(36),
//                     // Container(
//                     //   height: 50.h,
//                     //   decoration: BoxDecoration(
//                     //     borderRadius: BorderRadius.circular(50),
//                     //     color: Colors.grey.shade200,
//                     //   ),
//                     //   child: MaterialButton(
//                     //     onPressed: () {
//                     //       // signInWithGoogle();
//                     //     },
//                     //     child: Row(
//                     //       children: [
//                     //         Image.asset(
//                     //           'assets/images/Google - png 0.png',
//                     //           width: 40.0,
//                     //           height: 40.0,
//                     //         ),
//                     //         horizontalSpace(16),
//                     //         const Text(
//                     //           'Sign in with Google',
//                     //         ),
//                     //       ],
//                     //     ),
//                     //   ),
//                     // ),
//                     Container(
//                       width: double.infinity,
//                       height: 55.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: SignInButton(
//                         Buttons.Google,
//                         onPressed: () {
//                           signInWithGoogle();
//                         },
//                       ),
//                     ),
//                     const LoginBlocListenter(),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void validateThenDoLogin(BuildContext context) {
//     if (context.read<LoginCubit>().formKey.currentState!.validate()) {
//       context.read<LoginCubit>().emitLoginState();
//     }
//   }
// }



class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sign in', style: TextStyles.font24BlackBold),
                verticalSpace(30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    AppTextButton(
                      buttonText: 'Continue',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalSpace(24),
                    const DontHaveAccountText(),
                    verticalSpace(24),
                    verticalSpace(36),
                    Container(
                      width: double.infinity,
                      height: 55.h,
                      child: SignInButton(
                        Buttons.Google,
                        onPressed: () {
                          context.read<LoginCubit>().signInWithGoogle();
                        },
                      ),
                    ),
                    const LoginBlocListenter(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
