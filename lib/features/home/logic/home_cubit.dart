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
      emit(HomeState.categoriesSuccess(
          categoriesDataList:
              categoriesResponseModel.categoriesData!.categoriesDataList!));
    }, failure: (errorHandler) {
      emit(HomeState.categoriesError(errorHandler: errorHandler));
    });
  }

  void getProducts() async {
    emit(const HomeState.productsLoading());

    final response = await _homeRepo.getProducts();
    response.when(success: (productsResponseModel) {
      emit(HomeState.productsSuccess(
          productsDataList: productsResponseModel.data?.products ?? []));
    }, failure: (errorHandler) {
      emit(HomeState.productsError(errorHandler: errorHandler));
    });
  }

  void getCategoriesDetails(int categoryId) async {
    emit(const HomeState.categoriesDetailsLoading());
    final response = await _homeRepo.getCategoriesDetails(categoryId);

    // طباعة الاستجابة للتحقق منها
    print('Response: $response');
    print('Requesting categories details for categoryId: $categoryId');

    response.when(
      success: (categoriesDetailsResponseModel) {
        emit(HomeState.categoriesDetailsSuccess(
          categoriesDetialsDataList:
              categoriesDetailsResponseModel.categoriesDetailsData?.categoriesDetailsDataList,
        ));
      },
      failure: (errorHandler) {
        emit(HomeState.categoriesDetailsError(errorHandler: errorHandler));
      },
    );
  }
}
