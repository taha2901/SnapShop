import 'package:flutter/material.dart';
import 'package:snap_shop/features/home/ui/widget/my_products_grid_view_item.dart';

class MyProductsGridView extends StatelessWidget {
  const MyProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عدد الأعمدة
            crossAxisSpacing: 10.0, // المسافة الأفقية بين العناصر
            mainAxisSpacing: 10.0, // المسافة العمودية بين العناصر
            childAspectRatio: 1 / 1.3, // نسبة العرض إلى الارتفاع
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const MyProductsGridViewItem();
          }),
    );
  }
}
