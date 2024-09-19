
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';

class MyProductsGridViewItem extends StatelessWidget {
  const MyProductsGridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  width: double.infinity,
                  fit: BoxFit.fill,
                  'assets/images/Rectangle 8.png',
                ),
              ),
              verticalSpace(10),
              const Text('  Mens Jacket'),
              const Text('  \$148'),
              verticalSpace(10),
            ],
          ),
        ),
        Positioned(
          right: 5.h,
          top: 5.h,
          child: IconButton(
            onPressed: () {},
            icon:  Icon(Icons.favorite_border_rounded,
            size: 24.sp,),
          ),
        ),
      ],
    );
  }
}
