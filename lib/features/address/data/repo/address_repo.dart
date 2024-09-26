import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/networking/api_result.dart';
import 'package:snap_shop/core/networking/api_services.dart';
import 'package:snap_shop/features/address/data/model/address_request_model.dart';
import 'package:snap_shop/features/address/data/model/address_response_model/address_response_model.dart';

class AddressRepo {
  final ApiServices _apiServices;

  AddressRepo(this._apiServices);

  Future<ApiResult<AddressResponseModel>> addAddress(
    AddressRequestModel addressRequestModel,
  ) async {
    try {
      final response = await _apiServices.addAddress(addressRequestModel);
      print('API Response: $response');
      return ApiResult.success(response);
    } catch (error) {
      print('API Error: $error');
      return ApiResult.failure(

        ErrorHandler.handle(error),
      );
    }
  }
}
