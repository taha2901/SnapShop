import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/font_weight_helper.dart';

class TextStyles {
  static const TextStyle style25 = TextStyle(
    color: Colors.black,
    fontSize: 25,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 0,
  );

  static const TextStyle style18 = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static const TextStyle styleBold18 = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  static const TextStyle style24 = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static TextStyle style20 = TextStyle(
    color: Colors.black.withOpacity(0.800000011920929),
    fontSize: 20,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static const TextStyle style22 = TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 0,
  );

  static TextStyle font16MainColorMedium = TextStyle(
    color: ColorsManager.mainColor,
    fontWeight: FontWeightHelper.medium,
    fontSize: 16.sp,
  );

  static TextStyle font16LightGreyRegular = TextStyle(
    color: ColorsManager.lightGrey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 16.sp,
  );
  static TextStyle font15Blackmedium = TextStyle(
    color: Colors.black,
    fontWeight: FontWeightHelper.medium,
    fontSize: 15.sp,
  );
  static TextStyle font12MainColorMedium = TextStyle(
    color: ColorsManager.mainColor,
    fontWeight: FontWeightHelper.medium,
    fontSize: 12.sp,
  );
  static TextStyle font12greyRegular = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeightHelper.medium,
    fontSize: 12.sp,
  );
  static TextStyle font24BlackBold = TextStyle(
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
    fontSize: 24.sp,
  );
  static TextStyle font16BlackBold = TextStyle(
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
    fontSize: 16.sp,
  );
  static TextStyle font12DarkBlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font14DarkBlueRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font32BlueBold = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeightHelper.bold,
    fontSize: 32.sp,
  );

  static TextStyle font24BlueBold = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeightHelper.bold,
    fontSize: 24.sp,
  );
  static TextStyle font16WhiteMedium = TextStyle(
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
    fontSize: 16.sp,
  );

  static TextStyle font14LightGreyRegular = TextStyle(
    color: ColorsManager.grey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    // color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 14.sp,
  );
  static TextStyle font13BlueRegular = TextStyle(
    color: ColorsManager.mainColor,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
    fontSize: 15.sp,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    // color: ColorsManager.grey,
  );
  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    // color: ColorsManager.darkBlue,
  );

  static TextStyle font15DarkBlueMedium = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.medium,
    // color: ColorsManager.darkBlue,
  );

  static TextStyle font14BlueSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    // color: ColorsManager.mainBlue,
  );
}
