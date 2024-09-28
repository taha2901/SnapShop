import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';

class ProfileUserDataShimmerLoading extends StatelessWidget {
  const ProfileUserDataShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Container(
        width:  double.infinity,
        child: Shimmer.fromColors(
          baseColor: ColorsManager.lightGrey,
          highlightColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10.h,
                width: 100.w,
                color: Colors.grey,
              ),
              verticalSpace(8),
              Container(
                height: 10.h,
                width: 200.w,
                color: Colors.grey,
              ),
              verticalSpace(8),
              Container(
                height: 10.h,
                width: 180.w,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
