import 'data.dart';

class CategoriesResponseModel {
	bool? status;
	dynamic message;
	CategoriesData? categoriesData;

	CategoriesResponseModel({this.status, this.message, this.categoriesData});

	factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) {
		return CategoriesResponseModel(
			status: json['status'] as bool?,
			message: json['message'] as dynamic,
			categoriesData: json['data'] == null
						? null
						: CategoriesData.fromJson(json['data'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toJson() => {
				'status': status,
				'message': message,
				'data': categoriesData?.toJson(),
			};
}
