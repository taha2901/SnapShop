import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/ui/widget/all_category_screen/categories_screen_list_view_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
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
                  itemCount: HomeCubit.get(context)
                          .categoriesDataList
                          ?.categoriesData
                          ?.categoriesDataList
                          ?.length ??
                      0,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CategoriesScreenViewItem(
                        categoriesDate: HomeCubit.get(context)
                            .categoriesDataList
                            ?.categoriesData
                            ?.categoriesDataList?[index],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
