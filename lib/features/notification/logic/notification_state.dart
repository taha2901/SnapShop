import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/features/notification/data/model/notification_data_list.dart';
part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;

  const factory NotificationState.notificationLoading() = NotificationLoading;
  const factory NotificationState.notificationSuccess(
          {required List<NotificationDataList> notificationDataList}) =
      NotificationSuccess;
  const factory NotificationState.notificationError(
      {required ErrorHandler errorHandler}) = NotificationError;

}
