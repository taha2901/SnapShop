import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/logic/home_state.dart';
import 'package:snap_shop/features/home/ui/widget/all_category_screen/categories_screen_list_view.dart';

class CategoriesScreenBlocBuilder extends StatelessWidget {
  const CategoriesScreenBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CategoriesLoading ||
          current is CategoriesSuccess ||
          current is CategoriesError,
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () => setUpLoading(),
          categoriesSuccess: (categoriesDataList) {
            var categoriesList = categoriesDataList;
            return setUpSuccess(categoriesList);
          },
          categoriesError: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

  Widget setUpSuccess(categoriesDataList) {
    return CategoriesScreen(
      categoriesData: categoriesDataList ?? [],
    );
  }

  Widget setUpLoading() {
    return const Scaffold(body:  Center(child: CircularProgressIndicator()));
  }
}
