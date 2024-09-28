import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/home/data/repo/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getCategories() async {
    if (isClosed) return;
    emit(const HomeState.categoriesLoading());
    final response = await _homeRepo.getCategories();
    response.when(success: (categoriesResponseModel) {
      if (isClosed) return;
      emit(HomeState.categoriesSuccess(
          categoriesDataList:
              categoriesResponseModel.categoriesData!.categoriesDataList!));
    }, failure: (errorHandler) {
      if (isClosed) return;
      emit(HomeState.categoriesError(errorHandler: errorHandler));
    });
  }

  void getProducts() async {
    if (isClosed) return;
    emit(const HomeState.productsLoading());

    final response = await _homeRepo.getProducts();
    response.when(success: (productsResponseModel) {
      if (isClosed) return;
      emit(HomeState.productsSuccess(
          productsDataList: productsResponseModel.data?.products ?? []));
    }, failure: (errorHandler) {
      if (isClosed) return;
      emit(HomeState.productsError(errorHandler: errorHandler));
    });
  }

  void getCategoriesDetails(int categoryId) async {
    if (isClosed) return;
    emit(const HomeState.categoriesDetailsLoading());
    final response = await _homeRepo.getCategoriesDetails(categoryId);

    response.when(
      success: (categoriesDetailsResponseModel) {
        if (isClosed) return;
        emit(HomeState.categoriesDetailsSuccess(
          categoriesDetialsDataList: categoriesDetailsResponseModel
              .categoriesDetailsData?.categoriesDetailsDataList,
        ));
      },
      failure: (errorHandler) {
        if (isClosed) return;
        emit(HomeState.categoriesDetailsError(errorHandler: errorHandler));
      },
    );
  }
}
