import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/features/favourite/data/model/favourite/data_fav.dart';
import 'package:snap_shop/features/favourite/data/repo/favourite_repo.dart';

part 'favourite_state.dart';
part 'favourite_cubit.freezed.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  final FavouriteRepo _favouriteRepo;
  FavouriteCubit(this._favouriteRepo) : super(const FavouriteState.initial());

  Future<void> getFavourites() async {
    emit(const FavouriteState.favouriteLoading());
    final result = await _favouriteRepo.getFavourite();
    result.when(
      success: (data) {
        emit(FavouriteState.favouriteSuccess(data: data.data!.data!));
      },
      failure: (failure) {
        emit(FavouriteState.favouriteError(message: failure.apiErrorModel.message?? ''));
      },
    );
   
  }
}
