import 'package:flutter/material.dart';
import 'package:snap_shop/features/home/data/model/products/product.dart';
import 'package:snap_shop/features/home/ui/widget/product/my_products_grid_view_item.dart';

class MyProductsGridView extends StatelessWidget {
  final List<ProductDataList?> productsDataList;
  const MyProductsGridView({super.key, required this.productsDataList});

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
          itemCount: productsDataList.length,
          itemBuilder: (context, index) {
            return  MyProductsGridViewItem(productsData:  productsDataList[index],);
          }),
    );
  }
}
