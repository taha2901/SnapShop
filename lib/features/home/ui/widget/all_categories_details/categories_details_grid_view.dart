import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/home/data/model/categories_details_response_model/datum.dart';
import 'package:snap_shop/features/home/ui/widget/all_categories_details/categories_details_grid_view_item.dart';

class CategoriesDetailsGridView extends StatelessWidget {
  final int categoryId;
  final List<CategoriesDetailsDataList?>? categoriesDataList;
  const CategoriesDetailsGridView(
      {super.key, this.categoriesDataList, required this.categoryId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Image.asset('assets/images/Frame 17.png',height: 40.h,width: 40.w,),
              ),
              verticalSpace(16),
              Row(
                children: [
                  Text(
                    'Hoodies',
                    style: TextStyles.font16BlackBold,
                  ),
                  horizontalSpace(8),
                  Text(
                    '240',
                    style: TextStyles.font16BlackBold,
                  ),
                ],
              ),
              verticalSpace(16),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // عدد الأعمدة
                      crossAxisSpacing: 10.0, // المسافة الأفقية بين العناصر
                      mainAxisSpacing: 10.0, // المسافة العمودية بين العناصر
                      childAspectRatio: 1 / 1.3, // نسبة العرض إلى الارتفاع
                    ),
                    itemCount: categoriesDataList?.length,
                    itemBuilder: (context, index) {
                      return CategoriesDetailsGridViewItem(
                        categoriesData: categoriesDataList?[index],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
