import 'package:flutter/material.dart';
import 'package:snap_shop/core/helpers/extentions.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/home/ui/widget/category/categories_details_grid_view_item.dart';

class CategoriesDetailsGridView extends StatelessWidget {
  const CategoriesDetailsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Image.asset('assets/images/Frame 17.png')),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Hoodies',
                    style: TextStyles.font16BlackBold,
                  ),
                  horizontalSpace(8),
                  Text(
                    '240',
                    style: TextStyles.font16BlackBold,
                  ),
                ],
              ),
              verticalSpace(16),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // عدد الأعمدة
                      crossAxisSpacing: 10.0, // المسافة الأفقية بين العناصر
                      mainAxisSpacing: 10.0, // المسافة العمودية بين العناصر
                      childAspectRatio: 1 / 1.3, // نسبة العرض إلى الارتفاع
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CategoriesDetailsGridViewItem();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
