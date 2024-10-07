import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/core/networking/api_result.dart';
import 'package:snap_shop/core/networking/api_services.dart';
import 'package:snap_shop/features/notification/data/model/notification.dart';

class NotificationRepo {
  final ApiServices _apiServices;

  NotificationRepo(this._apiServices);

  Future<ApiResult<NotificationResponseModel>> getNotification() async {
    try {
      final response = await _apiServices.getNotification();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure( ErrorHandler.handle(error));
    }
  }
}

