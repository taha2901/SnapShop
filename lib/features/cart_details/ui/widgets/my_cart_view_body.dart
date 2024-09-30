import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/core/widget/app_text_button.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/cart_info_item.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/total_price_widget.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({
    super.key,
    required this.total,
  });

  final double total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        const OrderInfoItem(
          title: 'Order Subtotal',
          value: r'42.97$',
        ),
        const SizedBox(
          height: 3,
        ),
        const OrderInfoItem(
          title: 'Discount',
          value: r'0$',
        ),
        const SizedBox(
          height: 3,
        ),
        const OrderInfoItem(
          title: 'Shipping',
          value: r'8$',
        ),
        const Divider(
          thickness: 2,
          height: 34,
          color: Color(0xffC7C7C7),
        ),
        // TotalPrice(title: 'Total', value: r'$${total.toStringAsFixed(2)}'),
        TotalPrice(title: 'Total', value: '\$${total.toStringAsFixed(2)}'),
        const SizedBox(
          height: 16,
        ),
        AppTextButton(
          buttonText: 'Complete Payment',
          textStyle: TextStyles.font16WhiteSemiBold,
          onPressed: () {},
          backgroundColor: ColorsManager.mainColor,
          borderRadius: 10.0,
          buttonHeight: 50.h,
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
