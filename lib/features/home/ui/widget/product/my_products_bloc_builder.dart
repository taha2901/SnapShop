import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/logic/home_state.dart';
import 'package:snap_shop/features/home/ui/widget/product/my_products_grid_view.dart';
import 'package:snap_shop/features/home/ui/widget/product/products_shimmer_loading.dart';

class ProductBlocBuilder extends StatelessWidget {
  const ProductBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is ProductsLoading ||
          current is ProductsSuccess ||
          current is ProductsError,
      builder: (context, state) {
        return state.maybeWhen(
          productsLoading: () => setUpLoading(),
          productsSuccess: (productsDataList) {
            var productsList = productsDataList;
            return setUpSuccess(productsList);
          },
          productsError: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

  Widget setUpSuccess(productsDataList) {
    return MyProductsGridView(
      productsDataList: productsDataList ?? [],
    );
  }

  Widget setUpLoading() {
    return const ProductsShimmerLoading();
  }
}
