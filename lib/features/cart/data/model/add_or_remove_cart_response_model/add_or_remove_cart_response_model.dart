import 'data.dart';

class AddOrRemoveCartResponseModel {
	bool? status;
	String? message;
	AddOrRemoveCartData? data;

	AddOrRemoveCartResponseModel({this.status, this.message, this.data});

	factory AddOrRemoveCartResponseModel.fromJson(Map<String, dynamic> json) {
		return AddOrRemoveCartResponseModel(
			status: json['status'] as bool?,
			message: json['message'] as String?,
			data: json['data'] == null
						? null
						: AddOrRemoveCartData.fromJson(json['data'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toJson() => {
				'status': status,
				'message': message,
				'data': data?.toJson(),
			};
}
