import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/core/widget/app_text_button.dart';
import 'package:snap_shop/core/widget/build_appbar.dart';
import 'package:snap_shop/features/cart_details/data/repo/checkout_repo_impl.dart';
import 'package:snap_shop/features/cart_details/logic/payment_cubit.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/cart_info_item.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/payment_method_bottom_sheet.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/total_price_widget.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({
    super.key,
    required this.total,
    required this.subtotal,
  });

  final double total;
  final double subtotal;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildApBar(title: 'My Cart',),
          Spacer(),
          OrderInfoItem(
            title: 'Order Subtotal',
            value: '\$${subtotal.toStringAsFixed(2)}',
          ),
          verticalSpace(3),
          // const OrderInfoItem(
          //   title: 'Discount',
          //   value: r'0$',
          // ),
          // const SizedBox(
          //   height: 3,
          // ),
          // const OrderInfoItem(
          //   title: 'Shipping',
          //   value: r'8$',
          // ),
          const Divider(
            thickness: 2,
            height: 34,
            color: Color(0xffC7C7C7),
          ),
          TotalPrice(title: 'Total', value: '\$${total.toStringAsFixed(2)}'),
          const SizedBox(
            height: 16,
          ),
          AppTextButton(
            buttonText: 'Complete Payment',
            textStyle: TextStyles.font16WhiteSemiBold,
            onPressed: () {
              print('total is $total');
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return const PaymentDetailsView();
              // }));

              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                builder: (context) {
                  return BlocProvider(
                    create: (context) => PaymentCubit(CheckoutRepoImpl()),
                    child: PaymentMethodsBottomSheet(
                      total: total,
                    ),
                  );
                },
              );
            },
            backgroundColor: ColorsManager.mainColor,
            borderRadius: 10.0,
            buttonHeight: 50.h,
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

