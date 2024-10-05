import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/theming/colors.dart';

class CartShimmerLoading extends StatelessWidget {
  const CartShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Container(
        height: 10.h,
        color: Colors.white,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            child: Row(
              children: [
                Shimmer.fromColors(
                  baseColor: ColorsManager.lightGrey,
                  highlightColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Shimmer.fromColors(
                      baseColor: ColorsManager.lightGrey,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                horizontalSpace(24),
                Shimmer.fromColors(
                  baseColor: ColorsManager.lightGrey,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 14.h,
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
    );
  }
}
