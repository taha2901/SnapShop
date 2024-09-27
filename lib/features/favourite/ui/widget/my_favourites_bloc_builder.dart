import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/favourite/logic/favourite_cubit.dart';
import 'package:snap_shop/features/favourite/ui/widget/my_favourites_grid_view.dart';

class FavouriteBlocBuilder extends StatelessWidget {
  const FavouriteBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCubit, FavouriteState>(
      buildWhen: (previous, current) =>
          current is  FavouriteLoading ||
          current is FavouriteSuccess ||
          current is FavouriteError,
      builder: (context, state) {
        return state.maybeWhen(
          favouriteLoading: () => setUpLoading(),
          favouriteSuccess: (favouriteDataList) {
            var favouriteList = favouriteDataList;
            return setUpSuccess(favouriteList);
          },
          favouriteError: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

  Widget setUpSuccess(favouriteList) {
    return MyFavouriteGridView(
      favouriteDataList: favouriteList ?? [],
    );
  }

  Widget setUpLoading() {
    return const Center(child: CircularProgressIndicator());
  }
}
