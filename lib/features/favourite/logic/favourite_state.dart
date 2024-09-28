part of 'favourite_cubit.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = _Initial;
  //favourite
  const factory FavouriteState.favouriteLoading() = FavouriteLoading;
  const factory FavouriteState.favouriteSuccess({required List<FavouriteDataList> data}) = FavouriteSuccess;
  const factory FavouriteState.favouriteError({required String message}) = FavouriteError;

  //add or remove favourite
  const factory FavouriteState.addOrRemoveFavouriteSuccess() = AddOrRemoveFavouriteSuccess;
  const factory FavouriteState.addOrRemoveFavouriteError() = AddOrRemoveFavouriteError;
}
