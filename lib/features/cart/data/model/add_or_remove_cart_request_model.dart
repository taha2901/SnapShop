class AddOrRemoveCartRequestModel {
	int? productId;

	AddOrRemoveCartRequestModel({this.productId});

	factory AddOrRemoveCartRequestModel.fromJson(Map<String, dynamic> json) {
		return AddOrRemoveCartRequestModel(
			productId: json['product_id'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'product_id': productId,
			};
}
