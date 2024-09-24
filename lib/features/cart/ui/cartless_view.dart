import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/core/widget/app_text_button.dart';

class CartLessScreen extends StatelessWidget {
  const CartLessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyles.font16BlackBold,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/parcel 1.png',height: 100.h,width: 100.w,),
            verticalSpace(16),
            Text(
              'Your Cart is Empty',
              style: TextStyles.font24BlackBold,
            ),
            verticalSpace(16),
            AppTextButton(
              buttonText: 'Explore Categories',
              textStyle: TextStyles.font16WhiteSemiBold,
              onPressed: () {},
              backgroundColor: ColorsManager.mainColor,
              borderRadius: 50.0,
              buttonHeight: 50.h,
              buttonWidth: 200.w,
            ),
          ],
        ),
      ),
    );
  }
}
