import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/widget/app_text_form_field.dart';
import 'package:snap_shop/features/home/ui/widget/categories_see_all.dart';
import 'package:snap_shop/features/home/ui/widget/categories_view.dart';
import 'package:snap_shop/features/home/ui/widget/custom_app_bar.dart';
import 'package:snap_shop/features/home/ui/widget/my_productS_grid_view.dart';
import 'package:snap_shop/features/home/ui/widget/top_selling_see_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
          child: Column(
            
            children: [
              const CustomAppBar(),
              verticalSpace(24.0),
               AppTextFormField(

                borderRadius: BorderRadius.all(Radius.circular(50.0.r)),
                hintText: 'Search',
                prefixIcon: const Icon(
                  Icons.search,
                ),
              ),
              verticalSpace(18.0),
              const CategoriesSeeAll(),
              verticalSpace(16.0),
              const CategoriesListView(),
              verticalSpace(14.0),
              const TopSellingSeeAll(),
              verticalSpace(16.0),
              const MyProductsGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
