import 'cart_item.dart';

class CartDataList {
	List<CartItem>? cartItems;
	int? subTotal;
	int? total;

	CartDataList({this.cartItems, this.subTotal, this.total});

	factory CartDataList.fromJson(Map<String, dynamic> json) => CartDataList(
				cartItems: (json['cart_items'] as List<dynamic>)
						.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
						.toList(),
				subTotal: json['sub_total'] as int?,
				total: json['total'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'cart_items': cartItems?.map((e) => e.toJson()).toList(),
				'sub_total': subTotal,
				'total': total,
			};
}
