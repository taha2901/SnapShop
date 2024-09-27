import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/networking/api_result.dart';
import 'package:snap_shop/core/networking/api_services.dart';
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
}
