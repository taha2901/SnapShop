import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/constants.dart';
import 'package:snap_shop/core/routings/app_router.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/widget/bottom_nav_bar.dart';

class SnapShop extends StatelessWidget {
  final AppRouter appRouter;
  const SnapShop({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Snap Shop',
          theme: ThemeData(
            primaryColor: ColorsManager.mainColor,
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
          ),
          initialRoute: isLoggedInUser ? Routers.layoutShop : Routers.login,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );;
  }
}