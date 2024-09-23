import 'notification_data.dart';

class NotificationResponseModel {
	bool? status;
	dynamic message;
	NotificationData? notificationData;

	NotificationResponseModel({this.status, this.message, this.notificationData});

	factory NotificationResponseModel.fromJson(Map<String, dynamic> json) => NotificationResponseModel(
				status: json['status'] as bool?,
				message: json['message'] as dynamic,
				notificationData: json['data'] == null
						? null
						: NotificationData.fromJson(json['data'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'status': status,
				'message': message,
				'data': notificationData?.toJson(),
			};
}
