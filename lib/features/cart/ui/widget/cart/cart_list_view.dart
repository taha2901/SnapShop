import 'package:flutter/material.dart';
import 'package:snap_shop/features/cart/data/model/cart_item.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_list_view_item.dart';

class CartListView extends StatelessWidget {
  final List<CartItem?>? cartItem;
  // final List<CartDataList>? cartDataList;
  const CartListView({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemBuilder: (context, index) => CartListViewItem(
        cartItem: cartItem![index]!,
      ),
      itemCount: cartItem?.length,
      shrinkWrap: true,
    );
  }
}
