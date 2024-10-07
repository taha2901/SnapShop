import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/networking/api_result.dart';
import 'package:snap_shop/core/networking/api_services.dart';
import 'package:snap_shop/features/login/data/model/login_response_body.dart';
import 'package:snap_shop/features/profile/data/model/change_password/change_password.dart';
import 'package:snap_shop/features/profile/data/model/change_password/change_password_request_model.dart';
import 'package:snap_shop/features/profile/data/model/profile_model/profile_model.dart';
import 'package:snap_shop/features/profile/data/model/update_profile_request_model.dart';

class ProfileRepo {
  final ApiServices _apiServices;

  ProfileRepo(this._apiServices);

  Future<ApiResult<ProfileModel>> getProfile() async {
    try {
      final response = await _apiServices.getProfile();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ChangePasswordResponseModel>> changePassword(
      ChangePasswordRequestModel changePasswordRequestModel) async {
    try {
      final response =
          await _apiServices.changePassword(changePasswordRequestModel);
      print('API Response: $response');
      return ApiResult.success(response);
    } catch (error) {
      print('API Error: $error');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<LoginResponseBody>> updateProfile(
      UpdateProfileRequestModel updateProfileRequestModel) async {
    try {
      final response =
          await _apiServices.updateProfile(updateProfileRequestModel);
      print('API Response: $response');
      return ApiResult.success(response);
    } catch (error) {
      print('API Error: $error');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
