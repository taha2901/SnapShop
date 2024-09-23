import 'package:flutter/material.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/home/ui/widget/all_category_screen/categories_screen_bloc_builder.dart';

class CategoriesSeeAll extends StatelessWidget {
  const CategoriesSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Categories',
          style: TextStyles.font16BlackBold,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routers.categories);
          },
          child: Text(
            'See All',
            style: TextStyles.font15DarkBlueMedium,
          ),
        ),
        // const CategoriesScreenBlocBuilder(),
      ],
    );
  }
}
