import 'product.dart';

class FavouriteDataList {
	int? id;
	ProductFav? product;

	FavouriteDataList({this.id, this.product});

	factory FavouriteDataList.fromJson(Map<String, dynamic> json) => FavouriteDataList(
				id: json['id'] as int?,
				product: json['product'] == null
						? null
						: ProductFav.fromJson(json['product'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'product': product?.toJson(),
			};
}
