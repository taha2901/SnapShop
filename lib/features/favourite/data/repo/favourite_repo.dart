import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/networking/api_result.dart';
import 'package:snap_shop/core/networking/api_services.dart';
import 'package:snap_shop/features/favourite/data/model/add_or_remove_cart_request_model.dart';
import 'package:snap_shop/features/favourite/data/model/add_or_remove_favourite_model/add_or_remove_favourite_model.dart';
import 'package:snap_shop/features/favourite/data/model/favourite/favourite.dart';

class FavouriteRepo {
  final ApiServices _apiServices;
  FavouriteRepo(this._apiServices);

  Future<ApiResult<FavouriteModel>> getFavourite() async {
    try {
      final response = await _apiServices.getFavourite();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AddOrRemoveFavouriteResponseModel>> addOrRemoveFavourite(
    AddOrRemoveFavouriteRequestModel addOrRemoveFavouriteRequestModel,
  ) async {
    try {
      final response = await _apiServices.addOrRemoveFavourite(
        addOrRemoveFavouriteRequestModel,
      );
      print('API Response: $response');
      return ApiResult.success(response);
    } catch (error) {
      print('API Error: $error');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
