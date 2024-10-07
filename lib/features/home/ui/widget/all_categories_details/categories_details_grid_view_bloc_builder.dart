import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/logic/home_state.dart';
import 'package:snap_shop/features/home/ui/widget/all_categories_details/categories_details_grid_view.dart';

class CategoriesDetailsBlocBuilder extends StatelessWidget {
  final int categoryId;
  const CategoriesDetailsBlocBuilder({
    super.key,
    required this.categoryId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is CategoriesDetailsLoading ||
            current is CategoriesDetailsSuccess ||
            current is CategoriesDetailsError,
        builder: (context, state) {
          return state.maybeWhen(
            categoriesDetailsLoading: () => setUpLoading(),
            categoriesDetailsSuccess: (categoriesDataList) {
              return setUpSuccess(categoriesDataList);
            },
            categoriesDetailsError: (error) => setupError(error),
            orElse: () => const SizedBox.shrink(),
          );
        });
  }

  Widget setupError(ErrorHandler error) {
    return Center(
        child: Scaffold(
            body:
                Center(child: Text('Error: ${error.apiErrorModel.message}'))));
  }

  Widget setUpSuccess(categoriesDataList) {
    return CategoriesDetailsGridView(
      categoryId: categoryId,
    );
  }

  Widget setUpLoading() {
    return const Scaffold(
        body: Center(
            child: CircularProgressIndicator(
      backgroundColor: ColorsManager.mainColor,
    )));
  }
}
