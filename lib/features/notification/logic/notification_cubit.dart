import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/notification/data/repo/notification_repo.dart';

import 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final NotificationRepo _notificationRepo;
  NotificationCubit(this._notificationRepo) : super(const NotificationState.initial());

  void getNotification() async {
    emit(const NotificationState.notificationLoading());

    final response = await _notificationRepo.getNotification();
    response.when(success: (notificationResponseModel) {
      print(
          'categoriesRRResponseModel: ${notificationResponseModel.notificationData}');
      emit(NotificationState.notificationSuccess(
          notificationDataList:
              notificationResponseModel.notificationData!.notificationDataList!));
    }, failure: (errorHandler) {
      print('Error: ${errorHandler}');
      emit(NotificationState.notificationError(errorHandler: errorHandler));
    });
  }

  
}
