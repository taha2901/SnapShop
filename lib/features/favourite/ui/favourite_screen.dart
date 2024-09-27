import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/features/favourite/ui/widget/favourite_app_bar.dart';
import 'package:snap_shop/features/favourite/ui/widget/my_favourites_bloc_builder.dart';
import 'package:snap_shop/features/favourite/ui/widget/my_favourites_grid_view.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
          child: Column(
            children: [
              const FavouriteAppBar(),
              verticalSpace(24),
               const Expanded(
                child: FavouriteBlocBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
