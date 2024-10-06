import 'package:flutter/material.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/ui/widget/product/my_products_grid_view.dart';
import 'package:snap_shop/features/home/ui/widget/product/products_shimmer_loading.dart';

class ProductBlocBuilder extends StatelessWidget {
  const ProductBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeCubit.get(context).productsDataList?.data?.products?.isEmpty ??
            true
        ? const ProductsShimmerLoading()
        : MyProductsGridView();
  }


  Widget setupError() {
    return const SizedBox.shrink();
  }
}
