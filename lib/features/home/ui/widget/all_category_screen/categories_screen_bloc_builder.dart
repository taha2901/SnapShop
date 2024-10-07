// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:snap_shop/features/home/logic/home_cubit.dart';
// import 'package:snap_shop/features/home/logic/home_state.dart';
// import 'package:snap_shop/features/home/ui/widget/all_category_screen/all_categories_shimmer.dart';
// import 'package:snap_shop/features/home/ui/widget/all_category_screen/categories_screen_list_view.dart';

// class CategoriesScreenBlocBuilder extends StatelessWidget {
//   const CategoriesScreenBlocBuilder({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeCubit, HomeState>(
//       buildWhen: (previous, current) =>
//           current is CategoriesLoading ||
//           current is CategoriesSuccess ||
//           current is CategoriesError,
//       builder: (context, state) {
//         return state.maybeWhen(
//           categoriesLoading: () => setUpLoading(),
//           categoriesSuccess: (categoriesDataList) {
//             return CategoriesScreen();
//           },
//           categoriesError: (error) => setupError(),
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }

//   Widget setupError() {
//     return const SizedBox.shrink();
//   }

//   Widget setUpLoading() {
//     return Scaffold(
//       body: const AllCategoriesShimmerLoading(),
//     );
//   }
// }






import 'package:flutter/material.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/ui/widget/all_category_screen/all_categories_shimmer.dart';
import 'package:snap_shop/features/home/ui/widget/all_category_screen/categories_screen_list_view.dart';

class CategoriesScreenBlocBuilder extends StatelessWidget {
  const CategoriesScreenBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeCubit.get(context)
                .categoriesDataList
                ?.categoriesData
                ?.categoriesDataList
                ?.isEmpty ??
            true
        ? const AllCategoriesShimmerLoading()
        : CategoriesScreen();
  }
}
