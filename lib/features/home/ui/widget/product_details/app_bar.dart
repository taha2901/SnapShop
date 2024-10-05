
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';

class ProductDetailsAppBar extends StatelessWidget {
  const ProductDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Image.asset(
            'assets/images/Frame 17.png',
            height: 40.h,
            width: 40.w,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/images/Frame 16.png',
            height: 40.h,
            width: 40.w,
          ),
        ),
      ],
    );
  }
}
