
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/features/home/ui/widget/categories_view_item.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView(
      {super.key});

  @override
  State<CategoriesListView> createState() =>
      _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
             context.pushNamed(Routers.categories);
            },
            child: CategoriesListViewitem(
              itemIndex: index,
            ),
          );
        },
      ),
    );
  }
}
