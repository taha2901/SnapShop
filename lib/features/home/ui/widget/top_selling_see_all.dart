import 'package:flutter/material.dart';
import 'package:snap_shop/core/theming/styles.dart';

class TopSellingSeeAll extends StatelessWidget {
  const TopSellingSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Top Selling',
          style: TextStyles.font16BlackBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: TextStyles.font15DarkBlueMedium,
        ),
      ],
    );
  }
}
