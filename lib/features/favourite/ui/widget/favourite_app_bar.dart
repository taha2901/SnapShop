import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/theming/styles.dart';

class FavouriteAppBar extends StatelessWidget {
  const FavouriteAppBar({
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
        Row(
          children: [
            Text('My Favourite', style: TextStyles.font16BlackBold),
            const Text(
              '(12)',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        const Text(
          'data',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

