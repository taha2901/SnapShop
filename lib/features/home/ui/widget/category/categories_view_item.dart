
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/home/data/model/categories/datum.dart';

class CategoryViewItem extends StatelessWidget {
  final CategoriesDataList? categoriesDate;
  final int itemIndex;
  const CategoryViewItem({
    super.key,
    this.categoriesDate,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
        child: Column(
          children: [
            CircleAvatar(
              radius: 26.r,
              backgroundColor: ColorsManager.lightBlue,
              child: Image.network(categoriesDate!.image ??
                  'https://student.valuxapps.com/storage/uploads/categories/16445230161CiW8.Light bulb-amico.png'),
            ),
            verticalSpace(8),
            Text(
              categoriesDate!.name ?? 'shorts',
              style: TextStyles.font12DarkBlueRegular,
            ),
          ],
        ),
      ),
    );
  }
}
