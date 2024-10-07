import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/notification/data/model/notification.dart';
import 'package:snap_shop/features/notification/data/repo/notification_repo.dart';

import 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  static NotificationCubit get(context) => BlocProvider.of(context);
  final NotificationRepo _notificationRepo;
  NotificationResponseModel? notificationDataList;
  NotificationCubit(this._notificationRepo)
      : super(const NotificationState.initial());

  Future<void> getNotification() async {
    if (isClosed) return;
    emit(const NotificationState.notificationLoading());

    final response = await _notificationRepo.getNotification();
    response.when(success: (notificationResponseModel) {
      if (isClosed) return;
      notificationDataList = notificationResponseModel;
      emit(
        NotificationState.notificationSuccess(
            notificationDataList: notificationResponseModel
                .notificationData?.notificationDataList),
      );
    }, failure: (errorHandler) {
      if (isClosed) return;
      emit(
        NotificationState.notificationError(errorHandler: errorHandler),
      );
    });
  }
}
