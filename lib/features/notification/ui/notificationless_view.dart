import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/core/widget/app_text_button.dart';

class NotificationLessScreen extends StatelessWidget {
  const NotificationLessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyles.font16BlackBold,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/bell 1.png',height: 100.h,width: 100.w,),
            verticalSpace(16),
            Text(
              'No Notifications Yet',
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
