import 'data.dart';

class CategoriesDetailsResponseModel {
	bool? status;
	dynamic message;
	CategoriesDetailsData? categoriesDetailsData;

	CategoriesDetailsResponseModel({this.status, this.message, this.categoriesDetailsData});

	factory CategoriesDetailsResponseModel.fromJson(Map<String, dynamic> json) {
		return CategoriesDetailsResponseModel(
			status: json['status'] as bool?,
			message: json['message'] as dynamic,
			categoriesDetailsData: json['data'] == null
						? null
						: CategoriesDetailsData.fromJson(json['data'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toJson() => {
				'status': status,
				'message': message,
				'data': categoriesDetailsData?.toJson(),
			};
}
