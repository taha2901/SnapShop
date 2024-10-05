import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';

class AddressShimmerLoading extends StatelessWidget {
  const AddressShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0), 
                  child: Row(
                    children: [
                      horizontalSpace(10),
                      Shimmer.fromColors(
                        baseColor: ColorsManager.lightGrey,
                        highlightColor: Colors.white,
                        child: Container(
                          height: 15.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            color: ColorsManager.lightGrey,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
