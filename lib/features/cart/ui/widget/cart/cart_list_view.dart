import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/features/cart/data/model/cart_response_model/cart_item.dart';
import 'package:snap_shop/features/cart/ui/cartless_view.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_list_view_item.dart';

class CartListView extends StatelessWidget {
  final List<CartItem?>? cartItems;

  const CartListView({
    super.key,
    required this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    return (cartItems == null || cartItems!.isEmpty)
        ? const CartLessScreen()
        : ListView.separated(
            separatorBuilder: (context, index) => Container(
              height: 10.h,
              color: Colors.white,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CartListViewItem(
                  cartItem: cartItems![index]!,
                ),
              );
            },
            itemCount: cartItems?.length.toInt() ?? 0,
            // shrinkWrap: true,
          );
  }
}
