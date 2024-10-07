import 'package:flutter/material.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/ui/product_details_screen.dart';
import 'package:snap_shop/features/home/ui/widget/product/my_products_grid_view_item.dart';

// class MyProductsGridView extends StatelessWidget {
//   const MyProductsGridView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: GridView.builder(
//         shrinkWrap: true,
//         // physics: const BouncingScrollPhysics(),
//         physics: NeverScrollableScrollPhysics(),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // عدد الأعمدة
//           crossAxisSpacing: 10.0, // المسافة الأفقية بين العناصر
//           mainAxisSpacing: 10.0, // المسافة العمودية بين العناصر
//           childAspectRatio: 1 / 1.3, // نسبة العرض إلى الارتفاع
//         ),
//         itemCount: HomeCubit.get(context).filteredProducts.isEmpty
//             ? HomeCubit.get(context).productsDataList?.data?.products?.length
//             : HomeCubit.get(context).filteredProducts.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ProductDetailsScreen(
//                       productDataList: HomeCubit.get(context)
//                           .productsDataList
//                           ?.data
//                           ?.products?[index]),
//                 ),
//               );
//             },
//             child: MyProductsGridViewItem(
//               productsData: HomeCubit.get(context).filteredProducts.isEmpty
//                   ? HomeCubit.get(context)
//                       .productsDataList
//                       ?.data
//                       ?.products![index]
//                   : HomeCubit.get(context).filteredProducts[index],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


class MyProductsGridView extends StatelessWidget {
  const MyProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded( // استخدم Flexible بدلاً من Expanded
      child: GridView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(), // تجنب مشاكل التمرير الزائد
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1 / 1.3,
        ),
        itemCount: HomeCubit.get(context).filteredProducts.isEmpty
            ? HomeCubit.get(context).productsDataList?.data?.products?.length
            : HomeCubit.get(context).filteredProducts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                      productDataList: HomeCubit.get(context)
                          .productsDataList
                          ?.data
                          ?.products?[index]),
                ),
              );
            },
            child: MyProductsGridViewItem(
              productsData: HomeCubit.get(context).filteredProducts.isEmpty
                  ? HomeCubit.get(context)
                      .productsDataList
                      ?.data
                      ?.products![index]
                  : HomeCubit.get(context).filteredProducts[index],
            ),
          );
        },
      ),
    );
  }
}
