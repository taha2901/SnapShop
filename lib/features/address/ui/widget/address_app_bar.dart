import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/theming/styles.dart';

class AddressAppBar extends StatelessWidget {
  const AddressAppBar({
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
        Text('Add Address', style: TextStyles.font16BlackBold),
        const Text(
          'data',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

