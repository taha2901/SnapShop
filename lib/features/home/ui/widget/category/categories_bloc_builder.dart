import 'package:flutter/material.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/ui/widget/category/categories_shimmer_loading.dart';
import 'package:snap_shop/features/home/ui/widget/category/categories_view.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeCubit.get(context)
                .categoriesDataList
                ?.categoriesData
                ?.categoriesDataList
                ?.isEmpty ??
            true
        ? const CategoriesShimmerLoading()
        : CategoriesListView();
  }
}
