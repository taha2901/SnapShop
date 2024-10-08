import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/features/home/data/model/categories/datum.dart';
import 'package:snap_shop/features/home/data/model/categories_details_response_model/datum.dart';
import 'package:snap_shop/features/home/data/model/products/product.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Categories
  const factory HomeState.categoriesLoading() = CategoriesLoading;
  const factory HomeState.cateLoad() = CatLoad;
  const factory HomeState.categoriesSuccess(
          {required List<CategoriesDataList> categoriesDataList}) =
      CategoriesSuccess;
  const factory HomeState.categoriesError(
      {required ErrorHandler errorHandler}) = CategoriesError;

  //Products
  const factory HomeState.productsLoading() = ProductsLoading;
  const factory HomeState.productsSuccess(
      {required List<ProductDataList?>? productsDataList}) = ProductsSuccess;
  const factory HomeState.productsError({required ErrorHandler errorHandler}) =
      ProductsError;

  //CategoriesDetails
  const factory HomeState.categoriesDetailsLoading() = CategoriesDetailsLoading;
  const factory HomeState.categoriesDetailsSuccess(
          {required List<CategoriesDetailsDataList?>? categoriesDetialsDataList}) =
      CategoriesDetailsSuccess;
  const factory HomeState.categoriesDetailsError(
      {required ErrorHandler errorHandler}) = CategoriesDetailsError;

      const factory HomeState.sendNotification() = SendNotification;
      const factory HomeState.homeFilteredState() = HomeFilteredState;
}
