import 'data.dart';

class AddressResponseModel {
	bool? status;
	String? message;
	Data? data;

	AddressResponseModel({this.status, this.message, this.data});

	factory AddressResponseModel.fromJson(Map<String, dynamic> json) {
		return AddressResponseModel(
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
