import 'cart_item.dart';

class CartDataList {
  List<CartItem>? cartItems;
  double? subTotal;
  double? total;

  CartDataList({this.cartItems, this.subTotal, this.total});

  factory CartDataList.fromJson(Map<String, dynamic> json) => CartDataList(
        cartItems: (json['cart_items'] as List<dynamic>)
            .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
            .toList(),
        // تأكد من تحويل أي قيمة int إلى double بشكل صريح
        subTotal: (json['sub_total'] as num?)?.toDouble(),
        total: (json['total'] as num?)?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'cart_items': cartItems?.map((e) => e.toJson()).toList(),
        'sub_total': subTotal,
        'total': total,
      };
}
