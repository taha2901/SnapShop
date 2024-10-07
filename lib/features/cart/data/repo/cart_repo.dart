import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/networking/api_result.dart';
import 'package:snap_shop/core/networking/api_services.dart';
import 'package:snap_shop/features/cart/data/model/add_or_remove_cart_request_model.dart';
import 'package:snap_shop/features/cart/data/model/add_or_remove_cart_response_model/add_or_remove_cart_response_model.dart';
import 'package:snap_shop/features/cart/data/model/cart_response_model/cart_response_model.dart';

class CartRepo {
  final ApiServices _apiServices;
  CartRepo(this._apiServices);

  Future<ApiResult<CartResponseModel>> getCart() async {
    try {
      final response = await _apiServices.getCart();
      print('API Response: $response');
      return ApiResult.success(response);
    } catch (error) {
      print('API Error: $error');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AddOrRemoveCartResponseModel>> addOrRemoveCart(
      AddOrRemoveCartRequestModel addOrRemoveCartRequestModel) async {
    try {
      final response =
          await _apiServices.addOrRemoveCart(addOrRemoveCartRequestModel);
      print('API Response in addOrRemoveCart: $response');
      print('you are success adding to cart or remove from cart');
      return ApiResult.success(response);
    } catch (error) {
      print('API Error in addOrRemoveCart: $error');
      print('you are success adding to cart or remove from cart');
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
