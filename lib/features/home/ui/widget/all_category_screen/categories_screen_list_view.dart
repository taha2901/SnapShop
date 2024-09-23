import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/home/data/model/categories/datum.dart';
import 'package:snap_shop/features/home/ui/widget/all_category_screen/categories_screen_list_view_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<CategoriesDataList?>? categoriesData;
  const CategoriesScreen({super.key,  this.categoriesData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
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
              Text(
                'Shop By Categories',
                style: TextStyles.font24BlackBold,
              ),
              verticalSpace(16),
              Expanded(
                child: ListView.builder(
                    itemCount: categoriesData?.length,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: CategoriesScreenViewItem(
                          categoriesDate: categoriesData?[index],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
