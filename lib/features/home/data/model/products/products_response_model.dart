import 'data.dart';

class ProductsResponseModel {
	bool? status;
	dynamic message;
	ProductsData? data;

	ProductsResponseModel({this.status, this.message, this.data});

	factory ProductsResponseModel.fromJson(Map<String, dynamic> json) {
		return ProductsResponseModel(
			status: json['status'] as bool?,
			message: json['message'] as dynamic,
			data: json['data'] == null
						? null
						: ProductsData.fromJson(json['data'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toJson() => {
				'status': status,
				'message': message,
				'data': data?.toJson(),
			};
}
