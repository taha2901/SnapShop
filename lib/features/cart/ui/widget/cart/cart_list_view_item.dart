import 'package:flutter/material.dart'; 
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/cart/data/model/cart_item.dart';

class CartListViewItem extends StatefulWidget {
  final CartItem cartItem;
  const CartListViewItem({
    super.key,
    required this.cartItem,
  });

  @override
  _CartListViewItemState createState() => _CartListViewItemState();
}

class _CartListViewItemState extends State<CartListViewItem> {
  int quantity = 1; // متغير لحفظ الكمية

  @override
  Widget build(BuildContext context) {
    int totalPrice = widget.cartItem.product!.price! * quantity; // حساب السعر الإجمالي بناءً على الكمية

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                widget.cartItem.product!.image.toString(),
                height: 100.h,
                width: 100.w,
              ),
            ),
          ),
          horizontalSpace(24),
          Expanded(
            child: Text(
              '${widget.cartItem.product!.name}',
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
                  '\$$totalPrice', // عرض السعر الإجمالي بناءً على الكمية
                  style: TextStyles.font14DarkBlueRegular,
                ),
                verticalSpace(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          quantity++; // زيادة الكمية
                        });
                      },
                      child: const Icon(
                        Iconsax.add,
                        color: ColorsManager.mainColor,
                      ),
                    ),
                    horizontalSpace(8),
                    Text(
                      '$quantity', // عرض الكمية
                      style: TextStyles.font14DarkBlueRegular,
                    ),
                    horizontalSpace(8),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (quantity > 1) {
                            quantity--; // تقليل الكمية بشرط ألا تقل عن 1
                          }
                        });
                      },
                      child: const Icon(
                        Iconsax.minus,
                        color: ColorsManager.mainColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
