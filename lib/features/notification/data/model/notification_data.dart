import 'notification_data_list.dart';

class NotificationData {
  List<NotificationDataList>? notificationDataList;
  NotificationData({
    this.notificationDataList,
  });

  factory NotificationData.fromJson(Map<String, dynamic> json) => NotificationData(
        notificationDataList: (json['data'] as List<dynamic>?)
            ?.map((e) => NotificationDataList.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': notificationDataList?.map((e) => e.toJson()).toList(),
      };
}
