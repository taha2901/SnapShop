import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/features/cart/logic/cart_cubit.dart';
import 'package:snap_shop/features/cart/ui/cartless_view.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_list_view_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CartCubit.get(context).cartDataList?.data?.cartItems?.isEmpty ?? true
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
                  cartItem: CartCubit.get(context)
                      .cartDataList!
                      .data!
                      .cartItems![index],
                ),
              );
            },
            itemCount: CartCubit.get(context)
                    .cartDataList
                    ?.data
                    ?.cartItems
                    ?.length
                    .toInt() ??
                0,
            // shrinkWrap: true,
          );
  }
}
