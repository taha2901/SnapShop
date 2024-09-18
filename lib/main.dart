import 'package:flutter/material.dart';
import 'package:snap_shop/features/snap_shop_app.dart';
import 'package:snap_shop/core/routings/app_router.dart';

void main() {
  runApp(
    SnapShop(
      appRouter: AppRouter(),
    ),
  );
}