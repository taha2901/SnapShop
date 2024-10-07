class AddOrRemoveFavouriteRequestModel {
	int? productId;

	AddOrRemoveFavouriteRequestModel({this.productId});

	factory AddOrRemoveFavouriteRequestModel.fromJson(Map<String, dynamic> json) {
		return AddOrRemoveFavouriteRequestModel(
			productId: json['product_id'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'product_id': productId,
			};
}
