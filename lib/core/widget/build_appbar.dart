import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/theming/styles.dart';

class BuildApBar extends StatelessWidget {
  final String? title;
  const BuildApBar({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset(
            'assets/images/Frame 17.png',
            height: 40.h,
            width: 40.w,
          ),
        ),
        title == null
            ? const SizedBox()
            : Text(
                title.toString(),
                style: TextStyles.font16BlackBold,
              ),
        Text('(12)', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
