import 'data.dart';

class ChangePasswordResponseModel {
	bool? status;
	String? message;
	Data? data;

	ChangePasswordResponseModel({this.status, this.message, this.data});

	factory ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) {
		return ChangePasswordResponseModel(
			status: json['status'] as bool?,
			message: json['message'] as String?,
			data: json['data'] == null
						? null
						: Data.fromJson(json['data'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toJson() => {
				'status': status,
				'message': message,
				'data': data?.toJson(),
			};
}
