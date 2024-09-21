
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/features/home/data/model/categories/datum.dart';
import 'package:snap_shop/features/home/ui/widget/category/categories_view_item.dart';

class CategoriesListView extends StatelessWidget {
  final List<CategoriesDataList?> categoriesData;
  const CategoriesListView(
      {super.key, required this.categoriesData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: categoriesData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
            //  context.pushNamed(Routers.categories);
            },
            child: CategoriesListViewitem(
              categoriesDate:categoriesData[index],
              itemIndex: index,
            ),
          );
        },
      ),
    );
  }
}
