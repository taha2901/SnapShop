import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snap_shop/core/theming/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    leading: Center(
      child: InkWell(
        child: SvgPicture.asset(
          'assets/svgs/arrow.svg',
        ),
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: TextStyles.style25,
    ),
  );
}
