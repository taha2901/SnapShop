import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/widget/app_text_form_field.dart';
import 'package:snap_shop/features/profile/logic/profile_cubit.dart';

class UpdateUserDataScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  UpdateUserDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Data"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppTextFormField(
                hintText: "Name",
                borderRadius: BorderRadius.circular(10),
                controller: nameController),
            verticalSpace(15),
            AppTextFormField(
                hintText: "Email",
                borderRadius: BorderRadius.circular(10),
                controller: emailController),
            verticalSpace(15),
            AppTextFormField(
                hintText: "Phone",
                borderRadius: BorderRadius.circular(10),
                controller: phoneController),
            const Spacer(),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ColorsManager.mainColor,
              ),
              child: TextButton(
                onPressed: () {
                  if (nameController.text.isNotEmpty &&
                      phoneController.text.isNotEmpty &&
                      emailController.text.isNotEmpty) {
                    context.read<ProfileCubit>().updateProfile(
                        nameController.text,
                        phoneController.text,
                        emailController.text);
                  } else {
                    showSnackBarItem(
                        context, 'Please, Enter all Data !!', false);
                  }
                },
                child: const Text(
                  "Update",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void showSnackBarItem(
      BuildContext context, String message, bool forSuccessOrFailure) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: forSuccessOrFailure ? Colors.green : Colors.red,
    ));
  }
}
