import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snap_shop/core/theming/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20.0.sp,
          child: Image.asset('assets/images/Ellipse 13.png')
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: ColorsManager.mainColor,
          radius: 20.0.sp,
          child: SvgPicture.asset(
            'assets/svgs/bag2.svg',
          ),
        ),
      ],
    );
  }
}
