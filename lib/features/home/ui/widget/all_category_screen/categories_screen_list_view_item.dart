import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/home/data/model/categories/datum.dart';

class CategoriesScreenViewItem extends StatelessWidget {
  final CategoriesDataList? categoriesDate;
  const CategoriesScreenViewItem({super.key, this.categoriesDate});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routers.categoriesDetails,arguments: categoriesDate?.id);
      },
      child: Container(
        width: double.infinity,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: Colors.grey.shade200,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              horizontalSpace(10),
              Image.network(
                categoriesDate?.image ??
                    'https://student.valuxapps.com/storage/uploads/categories/16445230161CiW8.Light bulb-amico.png',
              ),
              horizontalSpace(24),
              Text(
                categoriesDate?.name ?? 'shorts',
                style: TextStyles.font14DarkBlueRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
