// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:snap_shop/core/helpers/spacing.dart';
// import 'package:snap_shop/core/theming/colors.dart';
// import 'package:snap_shop/core/widget/app_text_form_field.dart';
// import 'package:snap_shop/features/profile/logic/profile_cubit.dart';

// class UpdateUserDataScreen extends StatelessWidget {
//   final nameController = TextEditingController();
//   final phoneController = TextEditingController();
//   final emailController = TextEditingController();
//   UpdateUserDataScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<ProfileCubit, ProfileState>(
//       listener: (context, state) {
//         if (state is UpdateProfileLoading) {
//           showDialog(
//             context: context,
//             builder: (context) => const Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         } else if (state is UpdateProfileSuccess) {
//           showSnackBarItem(context, "Password changed successfully", true);
//           Navigator.pop(context);
//         } else if (state is UpdateProfileError) {
//           showDialog(context: context, builder: (context) => Text('Error'));
//         }
//       },
//       builder: (context, state) {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text("Update Data"),
//             elevation: 0,
//           ),
//           body: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 AppTextFormField(
//                     hintText: "Name",
//                     borderRadius: BorderRadius.circular(10),
//                     controller: nameController),
//                 verticalSpace(15),
//                 AppTextFormField(
//                     hintText: "Email",
//                     borderRadius: BorderRadius.circular(10),
//                     controller: emailController),
//                 verticalSpace(15),
//                 AppTextFormField(
//                     hintText: "Phone",
//                     borderRadius: BorderRadius.circular(10),
//                     controller: phoneController),
//                 const Spacer(),
//                 Container(
//                   width: double.infinity,
//                   height: MediaQuery.of(context).size.height * 0.07,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: ColorsManager.mainColor,
//                   ),
//                   child: TextButton(
//                     onPressed: () {
//                       if (nameController.text.isNotEmpty &&
//                           phoneController.text.isNotEmpty &&
//                           emailController.text.isNotEmpty) {
//                         context.read<ProfileCubit>().updateProfile(
//                             nameController.text,
//                             phoneController.text,
//                             emailController.text);
//                       } else {
//                         showSnackBarItem(
//                             context, 'Please, Enter all Data !!', false);
//                       }
//                     },
//                     child: const Text(
//                       "Update",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void showSnackBarItem(
//       BuildContext context, String message, bool forSuccessOrFailure) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text(message),
//       backgroundColor: forSuccessOrFailure ? Colors.green : Colors.red,
//     ));
//   }
// }



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
    // نقوم بتحميل البيانات عند بناء الصفحة
    ProfileCubit profileCubit = ProfileCubit.get(context);

    // تحميل البيانات في الحقول إذا كانت البيانات موجودة
    if (profileCubit.profileModelList?.data != null) {
      nameController.text = profileCubit.profileModelList!.data!.name ?? '';
      emailController.text = profileCubit.profileModelList!.data!.email ?? '';
      phoneController.text = profileCubit.profileModelList!.data!.phone ?? '';
    }

    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is UpdateProfileLoading) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is UpdateProfileSuccess) {
          showSnackBarItem(context, "Data updated successfully", true);
          Navigator.pop(context);
        } else if (state is UpdateProfileError) {
          showDialog(context: context, builder: (context) => Text('Error'));
        }
      },
      builder: (context, state) {
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
                  controller: nameController,
                ),
                verticalSpace(15),
                AppTextFormField(
                  hintText: "Email",
                  borderRadius: BorderRadius.circular(10),
                  controller: emailController,
                ),
                verticalSpace(15),
                AppTextFormField(
                  hintText: "Phone",
                  borderRadius: BorderRadius.circular(10),
                  controller: phoneController,
                ),
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
                ),
              ],
            ),
          ),
        );
      },
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
