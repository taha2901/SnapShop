import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/networking/api_result.dart';
import 'package:snap_shop/core/networking/api_services.dart';
import 'package:snap_shop/features/cart/data/model/cart_response_model.dart';

class CartRepo {
  final ApiServices _apiServices;
  CartRepo(this._apiServices);

  Future<ApiResult<CartResponseModel>> getCart() async {
    try {
      final response = await _apiServices.getCart();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
