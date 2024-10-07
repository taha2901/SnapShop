import 'product.dart';

class AddOrRemoveCartData {
	int? id;
	int? quantity;
	AddOrRemoveCartProduct? addOrRemoveCartProduct;

	AddOrRemoveCartData({this.id, this.quantity, this.addOrRemoveCartProduct});

	factory AddOrRemoveCartData.fromJson(Map<String, dynamic> json) => AddOrRemoveCartData(
				id: json['id'] as int?,
				quantity: json['quantity'] as int?,
				addOrRemoveCartProduct: json['product'] == null
						? null
						: AddOrRemoveCartProduct.fromJson(json['product'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'quantity': quantity,
				'product': addOrRemoveCartProduct?.toJson(),
			};
}
