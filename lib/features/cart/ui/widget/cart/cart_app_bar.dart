
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        // const Spacer(),
        const Text('Cart'),
        // const Spacer(),
        const Text(
          'ksksw',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
