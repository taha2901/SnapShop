import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/profile/data/model/profile_model/profile_model.dart';
import 'package:snap_shop/features/profile/logic/profile_cubit.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileModel profileModel;
  const ProfileScreen({super.key,required this.profileModel});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        state.whenOrNull(
          settingsSuccess: (profileModel) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Success'),
              ),
            );
          },
          settingsLoading: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Loading...'),
              ),
            );
          },
          settingsError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(error.apiErrorModel.message ?? ''),
            ));
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.sp,
                    child: Icon(
                      Icons.person,
                      size: 60.sp,
                    ),
                  ),
                  verticalSpace(16.0),
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey.shade200,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 16.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${profileModel.data?.name}",
                              style: TextStyles.font16BlackBold,
                            ),
                            verticalSpace(8),
                            Row(
                              children: [
                                Text(
                                  "${profileModel.data?.email}",
                                  style: TextStyles.font14LightGreyRegular,
                                ),
                                const Spacer(),
                                GestureDetector(
                                    child: Text(
                                  "Edit",
                                  style: TextStyles.font16MainColorMedium,
                                )),
                              ],
                            ),
                            verticalSpace(8),
                            Text(
                              "${profileModel.data?.phone}",
                              style: TextStyles.font14LightGreyRegular,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(16.0),
                  Card(
                    child: ListTile(
                      leading: const Icon(Iconsax.timer_1),
                      title: const Text("Change Password"),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => ChangePasswordScreen(),
                        //   ),
                        // );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Iconsax.information),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Iconsax.edit)),
                      title: const Text("Update Profile"),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => UpdateUserDataScreen(),
                        //   ),
                        // );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
