import 'package:flutter/material.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/features/home/data/model/products/product.dart';
import 'package:snap_shop/features/home/ui/product_details_screen.dart';
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
          return GestureDetector(
            onTap: () {
              // إرسال بيانات المنتج إلى صفحة التفاصيل
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                      productDataList: productsDataList[index]),
                ),
              );
            },
            child: MyProductsGridViewItem(
              productsData: productsDataList[index],
            ),
          );
        },
      ),
    );
  }
}
