import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/ui/widget/category/categories_view_item.dart';

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
          return CategoryViewItem(
              itemIndex: index,
              categoriesDate: HomeCubit.get(context)
                  .categoriesDataList!
                  .categoriesData!
                  .categoriesDataList![index]);
        },
      ),
    );
  }
}
