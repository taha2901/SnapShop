import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/cart/data/model/cart_response_model/cart_item.dart';

class CartListViewItem extends StatelessWidget {
  final CartItem cartItem;

  const CartListViewItem({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                cartItem.product!.image.toString(),
                height: 100.h,
                width: 100.w,
              ),
            ),
          ),
          horizontalSpace(24),
          Expanded(
            child: Text(
              '${cartItem.product!.name}',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyles.font14DarkBlueRegular,
            ),
          ),
          horizontalSpace(24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$${cartItem.product!.price}', // عرض السعر الإجمالي بناءً على الكمية
                  style: TextStyles.font14DarkBlueRegular,
                ),
                // verticalSpace(8),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     GestureDetector(
                //       onTap: () {
                //         setState(() {
                //           quantity++; // زيادة الكمية
                //         });
                //       },
                //       child: const Icon(
                //         Iconsax.add,
                //         color: ColorsManager.mainColor,
                //       ),
                //     ),
                //     horizontalSpace(8),
                //     Text(
                //       '$quantity', // عرض الكمية
                //       style: TextStyles.font14DarkBlueRegular,
                //     ),
                //     horizontalSpace(8),
                //     GestureDetector(
                //       onTap: () {
                //         setState(() {
                //           if (quantity > 1) {
                //             quantity--; // تقليل الكمية بشرط ألا تقل عن 1
                //           }
                //         });
                //       },
                //       child: const Icon(
                //         Iconsax.minus,
                //         color: ColorsManager.mainColor,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
