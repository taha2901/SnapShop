import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shop By Category',
              style: TextStyles.font24BlackBold,
            ),
            verticalSpace(16),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: CategoriesViewItem(),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class CategoriesViewItem extends StatelessWidget {
  const CategoriesViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: Colors.grey.shade200,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            horizontalSpace(10),
            Image.asset(
              'assets/images/Rectangle 8.png',
            ),
            horizontalSpace(24),
            Text(
              'Shorts',
              style: TextStyles.font14DarkBlueRegular,
            ),
          ],
        ),
      ),
    );
  }
}
