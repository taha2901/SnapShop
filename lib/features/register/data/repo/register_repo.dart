import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/networking/api_result.dart';
import 'package:snap_shop/core/networking/api_services.dart';
import 'package:snap_shop/features/register/data/models/register_request_body.dart';

import '../models/register_response.dart';

class RegisterRepo {
  final ApiServices _apiService;

  RegisterRepo(this._apiService);

  Future<ApiResult<RegisterResponseBody>> signup(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await _apiService.register( registerRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}