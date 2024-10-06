import 'data.dart';

class AddressResponseModel {
	bool? status;
	String? message;
	List<Data>? data;

	AddressResponseModel({this.status, this.message, this.data});

	factory AddressResponseModel.fromJson(Map<String, dynamic> json) {
		return AddressResponseModel(
			status: json['status'] as bool?,
			message: json['message'] as String?,
			data: (json['data'] as List<dynamic>?)?.map((e) => Data.fromJson(e as Map<String, dynamic>)).toList(),
		);
	}



	Map<String, dynamic> toJson() => {
				'status': status,
				'message': message,
				'data': data?.map((e) => e.toJson()).toList(),
			};
}
