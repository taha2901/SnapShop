import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:snap_shop/core/helpers/constants.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/shared_pref_helper.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/networking/dio_factory.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/features/login/logic/login_cubit.dart';
import 'package:snap_shop/features/logout/logic/cubit/logout_cubit.dart';
import 'package:snap_shop/features/profile/logic/profile_cubit.dart';
import 'package:snap_shop/features/profile/ui/widget/card_user_data.dart';
import 'package:snap_shop/features/profile/ui/widget/profile_user_data_shimmer_laoding.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
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
                    state is ProfileLoading
                        ? ProfileUserDataShimmerLoading()
                        : CardOfUserData(),
                    verticalSpace(16.0),
                    _buildListTile(
                        context, "Change Password", Routers.changePassword),
                    _buildListTile(
                        context, "Update Profile", Routers.updateProfile),
                    Card(
                      child: ListTile(
                        leading: const Icon(Iconsax.timer_1),
                        trailing: IconButton(
                          onPressed: () {
                            context.pushNamed(Routers.addAddress);
                          },
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                        title: const Text("Address"),
                        onTap: () {
                          context.pushNamed(Routers.address);
                        },
                      ),
                    ),
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
          // await SharedPrefHelper.clearAllData();
          // await SharedPrefHelper.clearAllSecuredData();

          // DioFactory.setTokenIntoHeaderAfterLogin(null.toString());

          // // استدعاء resetFields هنا
          // LoginCubit.get(context).resetFields();

          context.read<LogoutCubit>().logout(SharedPrefKeys.userToken);

          Navigator.pushNamedAndRemoveUntil(
              context, Routers.login, (route) => false);
        },
      ),
    );
  }
}
