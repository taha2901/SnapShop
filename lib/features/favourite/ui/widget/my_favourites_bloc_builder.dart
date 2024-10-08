// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:snap_shop/core/widget/custom_show_toast.dart';
// import 'package:snap_shop/features/favourite/logic/favourite_cubit.dart';
// import 'package:snap_shop/features/favourite/ui/widget/favourite_shimmer_loading.dart';
// import 'package:snap_shop/features/favourite/ui/widget/my_favourites_grid_view.dart';

// class FavouriteBlocBuilder extends StatelessWidget {
//   const FavouriteBlocBuilder({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<FavouriteCubit, FavouriteState>(
//       listener: (context, state) {
//         state.maybeWhen(
//           orElse: () {},
//           addOrRemoveFavouriteError: () {
//             return showToast(msg: 'Error', state: ToastStates.ERROR);
//           },
//           addOrRemoveFavouriteSuccess: () {
//             showToast(msg: 'Success', state: ToastStates.SUCCESS);
//           },
//         );
//       },
//       builder: (context, state) {
//         return state.maybeWhen(
//           favouriteLoading: () => setUpLoading(),
//           favouriteSuccess: (favouriteDataList) {
//             var favouriteList = favouriteDataList;
//             return setUpSuccess(favouriteList);
//           },
//           favouriteError: (error) => setupError(),
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }

//   Widget setupError() {
//     return const SizedBox.shrink();
//   }

//   Widget setUpSuccess(favouriteList) {
//     return MyFavouriteGridView();
//   }

//   Widget setUpLoading() {
//     return const FavouriteShimmerLoading();
//   }
// }

import 'package:flutter/material.dart';
import 'package:snap_shop/features/favourite/logic/favourite_cubit.dart';
import 'package:snap_shop/features/favourite/ui/widget/favourite_shimmer_loading.dart';
import 'package:snap_shop/features/favourite/ui/widget/my_favourites_grid_view.dart';

class FavouriteBlocBuilder extends StatelessWidget {
  const FavouriteBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FavouriteCubit.of(context)
                .favouriteModelDataList
                ?.data
                ?.data
                ?.isEmpty ??
            true
        ? const FavouriteShimmerLoading()
        : MyFavouriteGridView();
  }
}
