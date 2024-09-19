import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';

class CategoriesListViewitem extends StatelessWidget {
  final int itemIndex;
  const CategoriesListViewitem({
    super.key,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 26.r,
            backgroundColor: ColorsManager.lightBlue,
            child: Image.asset('assets/images/Ellipse 13.png'),
          ),
          verticalSpace(8),
          Text(
            'Shorts',
            style:TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
