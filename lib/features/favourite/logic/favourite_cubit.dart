import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/features/favourite/data/model/add_or_remove_cart_request_model.dart';
import 'package:snap_shop/features/favourite/data/model/add_or_remove_favourite_model/add_or_remove_favourite_model.dart';
import 'package:snap_shop/features/favourite/data/model/favourite/data_fav.dart';
import 'package:snap_shop/features/favourite/data/model/favourite/favourite.dart';
import 'package:snap_shop/features/favourite/data/repo/favourite_repo.dart';

part 'favourite_state.dart';
part 'favourite_cubit.freezed.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  static FavouriteCubit of(context) => BlocProvider.of(context);
  AddOrRemoveFavouriteResponseModel? addOrRemoveFavouriteDataList;
  FavouriteModel? favouriteModelDataList;
  final FavouriteRepo _favouriteRepo;
  FavouriteCubit(this._favouriteRepo) : super(const FavouriteState.initial());
  List<FavouriteDataList> favouriteList = [];
  Set<String> favoriteID = {};

  Future<void> getFavourites() async {
    emit(const FavouriteState.favouriteLoading());
    final result = await _favouriteRepo.getFavourite();
    result.when(
      success: (data) {
        favouriteList = data.data!.data!;
        favoriteID.clear();
        favouriteList.forEach((element) {
          favoriteID.add(element.product!.id.toString());
        });
        print('favoriteID: $favoriteID');
        print('favouriteList item: ${favouriteList.length}');
        favouriteModelDataList = data;
        emit(FavouriteState.favouriteSuccess(data: data.data!.data!));
      },
      failure: (failure) {
        emit(FavouriteState.favouriteError(
            message: failure.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> addOrRemoveFavourite({required int productId}) async {
    final result = await _favouriteRepo.addOrRemoveFavourite(
      AddOrRemoveFavouriteRequestModel(productId: productId),
    );
    result.when(
      success: (data) {
        if (favoriteID.contains(productId.toString())) {
          favoriteID.remove(productId.toString());
        } else {
          favoriteID.add(productId.toString());
        }
        getFavourites();
        addOrRemoveFavouriteDataList = data;
        emit(const FavouriteState.addOrRemoveFavouriteSuccess());
      },
      failure: (failure) {
        emit(const FavouriteState.addOrRemoveFavouriteError());
      },
    );
  }
}
