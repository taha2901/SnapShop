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
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}



/*
 final NotificationRepo _notificationRepo;
  NotificationCubit(this._notificationRepo)
      : super(const NotificationState.initial());

  void getNotification() async {
    emit(const NotificationState.notificationloading());
    final response = await _notificationRepo.getNotification();
    response.when(
      success: (notificationResponseModel) {
        emit(NotificationState.notificationsuccess(
            NotificationDataList: notificationResponseModel.notificationData.notificationDataList));
      },
      failure: (errorHandler) {
        emit(NotificationState.notificationerror(
            errorHandler: errorHandler.apiErrorModel.message));
      },
    );
  }

  const factory NotificationState.notificationloading() = NotificationLoading;

  const factory NotificationState.notificationsuccess({Required NotificationDataList notificationDataList}) = NotificationSuccess;

  const factory NotificationState.notificationerror( {required ErrorHandler errorHandler}) = NotificationError;

*/