import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/networking/api_result.dart';
import 'package:snap_shop/core/networking/api_services.dart';
import 'package:snap_shop/features/home/data/model/categories/categories_response_model.dart';
import 'package:snap_shop/features/home/data/model/products/products_response_model.dart';

class HomeRepo {
  final ApiServices _apiServices;

  HomeRepo(this._apiServices);

  Future<ApiResult<CategoriesResponseModel>> getCategories() async {
    try {
      final response = await _apiServices.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
  Future<ApiResult<ProductsResponseModel>> getProducts() async {
    try {
      final response = await _apiServices.getProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}