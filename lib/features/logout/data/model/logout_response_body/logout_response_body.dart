import 'data.dart';

class LogoutResponseBody {
	bool? status;
	String? message;
	Data? data;

	LogoutResponseBody({this.status, this.message, this.data});

	factory LogoutResponseBody.fromJson(Map<String, dynamic> json) {
		return LogoutResponseBody(
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
