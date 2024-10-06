// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:snap_shop/features/home/data/model/categories/datum.dart';
// import 'package:snap_shop/features/home/ui/widget/category/categories_view_item.dart';

// class CategoriesListView extends StatelessWidget {
//   final List<CategoriesDataList?> categoriesData;
//   const CategoriesListView({super.key, required this.categoriesData});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100.h,
//       child: ListView.builder(
//         itemCount: categoriesData.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             child: CategoriesListViewitem(
//               categoriesDate: categoriesData[index],
//               itemIndex: index,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: HomeCubit.get(context)
                  .categoriesDataList
                  ?.categoriesData!
                  .categoriesDataList
                  ?.length ??
              0,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                    start: index == 0 ? 0 : 24.w),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 26.r,
                      backgroundColor: ColorsManager.lightBlue,
                      child: Image.network(HomeCubit.get(context)
                              .categoriesDataList
                              ?.categoriesData!
                              .categoriesDataList?[index]
                              .image ??
                          'https://student.valuxapps.com/storage/uploads/categories/16445230161CiW8.Light bulb-amico.png'),
                    ),
                    verticalSpace(8),
                    Text(
                      HomeCubit.get(context)
                              .categoriesDataList
                              ?.categoriesData!
                              .categoriesDataList?[index]
                              .name ??
                          'shorts',
                      style: TextStyles.font12DarkBlueRegular,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
  }
}
