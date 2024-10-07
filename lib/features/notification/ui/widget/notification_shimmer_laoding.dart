import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';

class NotificationShimmerLoading extends StatelessWidget {
  const NotificationShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 13,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    padding: EdgeInsets.all(28.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorsManager.grey.withOpacity(0.1),
                    ),
                    child: Row(
                      children: [
                        horizontalSpace(10),
                        Icon(Icons.notifications),
                        horizontalSpace(24),
                        Shimmer.fromColors(
                          baseColor: ColorsManager.lightGrey,
                          highlightColor: Colors.white,
                          child: Container(
                            height: 15.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: ColorsManager.lightGrey,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
