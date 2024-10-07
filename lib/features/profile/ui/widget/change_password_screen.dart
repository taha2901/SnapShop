import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/constants.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/widget/app_text_form_field.dart';
import 'package:snap_shop/features/profile/logic/profile_cubit.dart';

class ChangePasswordScreen extends StatelessWidget {
  final currentPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is ChangePasswordLoading) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
       else if (state is ChangePasswordSuccess) {
          showSnackBarItem(context, "Password changed successfully", true);
          Navigator.pop(context);
        }
       else if (state is ChangePasswordError) {
          showDialog(
              context: context,
              builder: (context) =>
                  Text(state.errorHandler.apiErrorModel.message ?? ''));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Change Password"),
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                AppTextFormField(
                  hintText: 'Current Password',
                  borderRadius: BorderRadius.circular(10),
                  controller: currentPasswordController,
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFormField(
                    hintText: 'New Password',
                    borderRadius: BorderRadius.circular(10),
                    controller: newPasswordController),
                const Spacer(),
                Container(
                  width: double.infinity,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      debugPrint(
                          "From TextField : ${currentPasswordController.text} , current : $currentPassword");
                      if (currentPasswordController.text == currentPassword) {
                        if (newPasswordController.text.length >= 6) {
                          context.read<ProfileCubit>().changePassword(
                              currentPasswordController.text.trim(),
                              newPasswordController.text.trim());
                        } else {
                          showSnackBarItem(context,
                              "Password must be at least 6 characters", false);
                        }
                      }
                      // else {
                      //   showSnackBarItem(
                      //       context,
                      //       "please, verify current password, try again later",
                      //       false);
                      // }
                    },
                    style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(ColorsManager.mainColor),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    child: const Text("Change Password"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

void showSnackBarItem(
    BuildContext context, String message, bool forSuccessOrFailure) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: forSuccessOrFailure ? Colors.green : Colors.red,
  ));
}
