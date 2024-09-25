import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/core/widget/app_text_button.dart';
import 'package:snap_shop/features/cart/ui/widget/checkout/checkout_app_bar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CheckoutAppBar(),
              verticalSpace(24),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shipping Address',
                            style: TextStyles.font14LightGreyRegular,
                          ),
                          const Text('Add Shipping Address'),
                        ],
                      ),
                      const Spacer(),
                      Icon(
                        Icons.chevron_right,
                        size: 40.w,
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(24),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment Method',
                            style: TextStyles.font14LightGreyRegular,
                          ),
                          const Text('Add Payment Method'),
                        ],
                      ),
                      const Spacer(),
                      Icon(
                        Icons.chevron_right,
                        size: 40.w,
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(24),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text('Subtotal',
                              style: TextStyles.font14LightGreyRegular),
                          const Spacer(),
                          Text('\$ 0.00',
                              style: TextStyles.font14LightGreyRegular),
                        ],
                      ),
                      verticalSpace(24),
                      AppTextButton(
                        buttonText: 'Place Order',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                        backgroundColor: ColorsManager.mainColor,
                        borderRadius: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


