import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/shared_pref_helper.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/profile/logic/profile_cubit.dart';
import 'package:snap_shop/features/profile/ui/widget/profile_user_data_shimmer_laoding.dart';

class ProfileScreen extends StatefulWidget {
  // final ProfileModel profileModel;

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileCubit? _profileCubit;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // حفظ المرجع إلى الـ Cubit
    _profileCubit = context.read<ProfileCubit>();
  }

  @override
  void dispose() {
    // غلق الـ Cubit هنا بدون الحاجة لاستخدام context
    _profileCubit?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        state.whenOrNull(
          profileSuccess: (profileModel) {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(content: Text('Success')),
            // );
          },
          profileLoading: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(content: Text('Loading...')),
            // );
          },
          profileError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error.apiErrorModel.message ?? '')),
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            
            
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SingleChildScrollView(
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
                    // هنا نقوم بإظهار الـ Card حسب حالة التحميل
                    BlocBuilder<ProfileCubit, ProfileState>(
                      builder: (context, state) {
                        if (state is ProfileLoading) {
                          return ProfileUserDataShimmerLoading();
                        } else if (state is ProfileSuccess) {
                          return Card(
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
                                      "${state.profileModel!.data?.name}",
                                      style: TextStyles.font16BlackBold,
                                    ),
                                    verticalSpace(8),
                                    Row(
                                      children: [
                                        Text(
                                          "${state.profileModel!.data?.email}",
                                          style:
                                              TextStyles.font14LightGreyRegular,
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                          child: Text(
                                            "Edit",
                                            style: TextStyles
                                                .font16MainColorMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                    verticalSpace(8),
                                    Text(
                                      "${state.profileModel!.data?.phone}",
                                      style: TextStyles.font14LightGreyRegular,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        } else {
                          return const SizedBox
                              .shrink(); // إرجاع مساحة فارغة في حالات أخرى
                        }
                      },
                    ),
                    verticalSpace(16.0),
                    // باقي الأزرار
                    _buildListTile(
                        context, "Change Password", Routers.changePassword),
                    _buildListTile(
                        context, "Update Profile", Routers.updateProfile),
                    _buildListTile(context, "Address", Routers.address),
                    _buildListTile(context, "Wishlist", Routers.favourite),
                    verticalSpace(16.0),
                    _buildLogoutTile(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildListTile(BuildContext context, String title, String route) {
    return Card(
      child: ListTile(
        leading: const Icon(Iconsax.timer_1),
        title: Text(title),
        onTap: () {
          context.pushNamed(route);
        },
      ),
    );
  }

  Widget _buildLogoutTile(BuildContext context) {
    return Card(
      color: Colors.red,
      child: ListTile(
        leading: const Icon(Icons.logout, color: Colors.white),
        title: const Text(
          "Logout",
          style: TextStyle(color: Colors.white),
        ),
        onTap: () async {
          await SharedPrefHelper.clearAllData();
          await SharedPrefHelper.clearAllSecuredData();
          Navigator.pushNamedAndRemoveUntil(
              context, Routers.login, (route) => false);
        },
      ),
    );
  }
}
