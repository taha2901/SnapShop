import 'data.dart';

class GetAddressResponseModel {
	bool? status;
	dynamic message;
	Data? data;

	GetAddressResponseModel({this.status, this.message, this.data});

	factory GetAddressResponseModel.fromJson(Map<String, dynamic> json) {
		return GetAddressResponseModel(
			status: json['status'] as bool?,
			message: json['message'] as dynamic,
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
