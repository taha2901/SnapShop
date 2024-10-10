import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/widget/app_text_form_field.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/logic/home_state.dart';
import 'package:snap_shop/features/home/ui/widget/category/categories_bloc_builder.dart';
import 'package:snap_shop/features/home/ui/widget/category/categories_see_all.dart';
import 'package:snap_shop/features/home/ui/widget/custom_app_bar.dart';
import 'package:snap_shop/features/home/ui/widget/product/my_products_grid_view.dart';
import 'package:snap_shop/features/home/ui/widget/product/products_shimmer_loading.dart';
import 'package:snap_shop/features/home/ui/widget/top_selling_see_all.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
              child: Column(
                children: [
                  const CustomAppBar(),
                  verticalSpace(24.0),
                  AppTextFormField(
                    onChanged: (value) {
                      context.read<HomeCubit>().filterProducts(input: value);
                    },
                    borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                  ),
                  verticalSpace(18.0),
                  const CategoriesSeeAll(),
                  verticalSpace(16.0),
                  CategoriesBlocBuilder(),
                  verticalSpace(14.0),
                  const TopSellingSeeAll(),
                  verticalSpace(16.0),
                  if (state is ProductsLoading)
                    ProductsShimmerLoading()
                  else if (HomeCubit.get(context)
                          .productsDataList
                          ?.data
                          ?.products
                          ?.isEmpty ??
                      true)
                    ProductsShimmerLoading(),
                  if (state is ProductsSuccess) MyProductsGridView(),
                  if (state is ProductsError) SizedBox.shrink(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
