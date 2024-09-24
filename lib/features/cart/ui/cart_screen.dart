import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/core/widget/app_text_button.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_app_bar.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_bloc_builder.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CartAppBar(),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('Remove all'),
                    verticalSpace(24),
                    const Expanded(
                      child: CartBlocBuilder(),
                    ),
                  ],
                ),
              ),
              verticalSpace(24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Row(
                    //   children: [
                    //     Text('Subtotal',
                    //         style: TextStyles.font14LightGreyRegular),
                    //     const Spacer(),
                    //     Text('\$${cartDataList?.subTotal}'),
                    //   ],
                    // ),
                    // Row(
                    //   children: [
                    //     Text('Total', style: TextStyles.font14LightGreyRegular),
                    //     const Spacer(),
                    //     Text('\$${cartDataList?.total}'),
                    //   ],
                    // ),
                    verticalSpace(24),
                    AppTextButton(
                      buttonText: 'Checkout',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {},
                      backgroundColor: ColorsManager.mainColor,
                      borderRadius: 50.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
