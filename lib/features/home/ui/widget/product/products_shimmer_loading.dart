import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';

class ProductsShimmerLoading extends StatelessWidget {
  const ProductsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد الأعمدة
          crossAxisSpacing: 10.0, // المسافة الأفقية بين العناصر
          mainAxisSpacing: 10.0, // المسافة العمودية بين العناصر
          childAspectRatio: 1 / 1.3, // نسبة العرض إلى الارتفاع
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
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
                verticalSpace(10),
                Shimmer.fromColors(
                  baseColor: ColorsManager.lightGrey,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 10.h,
                    width: 110.w,
                    decoration: BoxDecoration(
                      color: ColorsManager.lightGrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                verticalSpace(8),
                Shimmer.fromColors(
                  baseColor: ColorsManager.lightGrey,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 10.h,
                    width: 220.w,
                    decoration: BoxDecoration(
                      color: ColorsManager.lightGrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                verticalSpace(16),
              ],
            ),
          );
        },
      ),
    );
  }
}
