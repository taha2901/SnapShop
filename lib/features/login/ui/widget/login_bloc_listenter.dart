import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/login/logic/login_cubit.dart';
import 'package:snap_shop/features/login/logic/login_state.dart';

class LoginBlocListenter extends StatelessWidget {
  const LoginBlocListenter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is LoginError,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mainColor,
                  ),
                );
              },
            );
          },
          success: (data) {
            context.pop();
            context.pushReplacementNamed(Routers.home);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
