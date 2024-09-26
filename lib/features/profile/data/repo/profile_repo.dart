import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/networking/api_result.dart';
import 'package:snap_shop/core/networking/api_services.dart';
import 'package:snap_shop/features/profile/data/model/profile_model/profile_model.dart';

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
}
