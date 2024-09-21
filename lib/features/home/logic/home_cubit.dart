import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/home/data/repo/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getCategories() async {
    emit(const HomeState.categoriesLoading());

    final response = await _homeRepo.getCategories();
    response.when(success: (categoriesResponseModel) {
      print(
          'categoriesResponseModel: ${categoriesResponseModel.categoriesData}');
      emit(HomeState.categoriesSuccess(
          categoriesDataList:
              categoriesResponseModel.categoriesData!.categoriesDataList!));
    }, failure: (errorHandler) {
      print('Error: ${errorHandler.toString()}');
      emit(HomeState.categoriesError(errorHandler: errorHandler));
    });
  }

  void getProducts() async {
    emit(const HomeState.productsLoading());

    final response = await _homeRepo.getProducts();
    response.when(success: (productsResponseModel) {
      print(
          'productsResponseModel: ${productsResponseModel.data?.products.toString()}');
      emit(HomeState.productsSuccess(
          productsDataList: productsResponseModel.data?.products ?? []));
    }, failure: (errorHandler) {
      emit(HomeState.productsError(errorHandler: errorHandler));
    });
  }
}
