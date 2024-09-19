import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/constants.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/shared_pref_helper.dart';
import 'package:snap_shop/features/login/ui/widget/login_bloc_listenter.dart';
import 'package:snap_shop/features/register/ui/sign_up_screen.dart';
import 'package:snap_shop/features/register/ui/widget/sign_up_bloc_listener.dart';
import 'package:snap_shop/snap_shop_app.dart';
import 'package:snap_shop/core/routings/app_router.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkLoggedInUser();
  ();
  runApp(
    SnapShop(
      appRouter: AppRouter(),
    ),
  );
}

checkLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
