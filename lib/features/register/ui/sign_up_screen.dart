import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/features/register/logic/register_cubit.dart';
import 'package:snap_shop/features/register/ui/widget/sign_up_bloc_listener.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widget/app_text_button.dart';
import 'widget/already_have_account_text.dart';
import 'widget/sign_up_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: IconButton(
              onPressed: () {
                context.pushNamed(Routers.login);
              },
              icon: CircleAvatar(
                radius: 20.sp,
                backgroundColor: ColorsManager.moreLighterGray,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20.sp,
                ),
              ),
            ),
          )),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 8.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyles.font24BlackBold,
                ),
                verticalSpace(18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SignupForm(),
                    verticalSpace(24),
                    AppTextButton(
                      buttonText: "Continue",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(18),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitSignupStates();
    }
  }
}
