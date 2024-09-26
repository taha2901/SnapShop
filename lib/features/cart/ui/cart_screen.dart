import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/core/widget/app_text_button.dart';
import 'package:snap_shop/features/cart/data/model/cart_response_model/cart_item.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_app_bar.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_bloc_builder.dart';

class CartScreen extends StatelessWidget {
  final CartItem? cartDataList;
  const CartScreen({super.key, this.cartDataList});

  @override
  Widget build(BuildContext context) {
    // final cartCubit = context.read<CartCubit>();

    // // التأكد من جلب بيانات السلة عند فتح الشاشة
    // cartCubit.getCart();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CartAppBar(),
              verticalSpace(24),
              Container(
                decoration: const BoxDecoration(),
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
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
                    verticalSpace(24),
                    AppTextButton(
                      buttonText: 'Checkout',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        context.pushNamed(
                          Routers.checkout,
                        );
                      },
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
