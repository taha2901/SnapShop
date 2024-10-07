import 'package:flutter/material.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  final double total;
  final double subtotal;
  const MyCartView({super.key, required this.total, required this.subtotal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: MyCartViewBody(
          total: total,
          subtotal: subtotal,
        ),
      ),
    );
  }
}
