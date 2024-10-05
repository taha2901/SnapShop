import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:snap_shop/core/helpers/api_keys.dart';
import 'package:snap_shop/core/helpers/constants.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/local_notify.dart';
import 'package:snap_shop/core/helpers/shared_pref_helper.dart';
import 'package:snap_shop/firebase_options.dart';
import 'package:snap_shop/snap_shop_app.dart';
import 'package:snap_shop/core/routings/app_router.dart';
import 'core/di/dependency_injection.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().requestPermissions();
  Stripe.publishableKey = ApiKeys.publishableKey;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkLoggedInUser();
  currentPassword =
      await SharedPrefHelper.getString(SharedPrefKeys.userPassword);
  print('currentPassword: $currentPassword');
  ();
  runApp(
    SnapShop(
      appRouter: AppRouter(),
    ),
  );
}

checkLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
