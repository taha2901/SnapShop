import 'package:flutter/material.dart';
import 'package:snap_shop/core/widget/cutom_app_bar.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  final double total;
  const MyCartView({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: MyCartViewBody(total: total),
      ),
    );
  }
}
