import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/di/dependency_injection.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/core/widget/app_text_button.dart';
import 'package:snap_shop/features/cart/data/model/cart_response_model/cart_item.dart';
import 'package:snap_shop/features/cart/logic/cart_cubit.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_app_bar.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_bloc_builder.dart';
import 'package:snap_shop/features/cart_details/ui/my_cart_view.dart';

class CartScreen extends StatefulWidget {
  final CartItem? cartDataList;
  const CartScreen({super.key, this.cartDataList});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
              verticalSpace(24),
              Container(
                decoration: const BoxDecoration(),
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    verticalSpace(24),
                    Expanded(
                      child: CartBlocBuilder(),
                    ),
                  ],
                ),
              ),
              verticalSpace(24),
              Expanded(
                child: BlocConsumer<CartCubit, CartState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const SizedBox.shrink();
                      },
                      cartsuccess: (cartsDataList) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text('Total',
                                    style: TextStyle(color: Colors.white)),
                                const Spacer(),
                                Text(
                                  '\$${cartsDataList!.data!.total}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Total',
                                    style: TextStyles.font16BlackBold),
                                const Spacer(),
                                Text(
                                  '\$${cartsDataList.data!.total}',
                                  style: TextStyles.font16BlackBold,
                                ),
                              ],
                            ),
                            AppTextButton(
                              buttonText: 'Checkout',
                              textStyle: TextStyles.font16WhiteSemiBold,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyCartView(
                                      subtotal: cartsDataList.data!.subTotal!,
                                      total: cartsDataList.data!.total!,
                                    ),
                                  ),
                                );
                              },
                              backgroundColor: ColorsManager.mainColor,
                              borderRadius: 50.0,
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
