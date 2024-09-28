import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';

class AllCategoriesShimmerLoading extends StatelessWidget {
  const AllCategoriesShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/Frame 17.png',
                height: 40.h,
                width: 40.w,
              ),
            ),
            verticalSpace(16),
            Text(
              'Shop By Categories',
              style: TextStyles.font24BlackBold,
            ),
            verticalSpace(16),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      width: double.infinity,
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child:  Row(
                          children: [
                            horizontalSpace(15),
                            Shimmer.fromColors(
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
                      // child: Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Row(
                      //     children: [
                      //       horizontalSpace(10),
                      //       Shimmer.fromColors(
                      //         baseColor: ColorsManager.lightGrey,
                      //         highlightColor: Colors.white,
                      //         child: Container(
                      //           height: 100.h,
                      //           width: 100.w,
                      //           decoration: BoxDecoration(
                      //             shape: BoxShape.rectangle,
                      //             borderRadius: BorderRadius.circular(12.0),
                      //             color: Colors.white,
                      //           ),
                      //         ),
                      //       ),
                      //       verticalSpace(10),
                      //       Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Shimmer.fromColors(
                      //             baseColor: ColorsManager.lightGrey,
                      //             highlightColor: Colors.white,
                      //             child: Container(
                      //               height: 15.h,
                      //               width: 100.w,
                      //               decoration: BoxDecoration(
                      //                 color: ColorsManager.lightGrey,
                      //                 borderRadius: BorderRadius.circular(12),
                      //               ),
                      //             ),
                      //           ),
                      //           verticalSpace(8),
                      //           Shimmer.fromColors(
                      //             baseColor: ColorsManager.lightGrey,
                      //             highlightColor: Colors.white,
                      //             child: Container(
                      //               height: 14.h,
                      //               width: 100.w,
                      //               decoration: BoxDecoration(
                      //                 color: ColorsManager.lightGrey,
                      //                 borderRadius: BorderRadius.circular(12),
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
