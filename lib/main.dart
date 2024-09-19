import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/snap_shop_app.dart';
import 'package:snap_shop/core/routings/app_router.dart';

import 'core/di/dependency_injection.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  ();
  runApp(
    SnapShop(
      appRouter: AppRouter(),
    ),
  );
}
