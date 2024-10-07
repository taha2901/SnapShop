import 'data.dart';

class CartResponseModel {
	bool? status;
	String? message;
	CartDataList? data;

	CartResponseModel({this.status, this.message, this.data});

	factory CartResponseModel.fromJson(Map<String, dynamic> json) {
		return CartResponseModel(
			status: json['status'] as bool?,
			message: json['message'] as String?,
			data: json['data'] == null
						? null
						: CartDataList.fromJson(json['data'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toJson() => {
				'status': status,
				'message': message,
				'data': data?.toJson(),
			};
}
