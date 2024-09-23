
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/home/data/model/categories_details_response_model/datum.dart';

class CategoriesDetailsGridViewItem extends StatelessWidget {
  final CategoriesDetailsDataList? categoriesData;
  const CategoriesDetailsGridViewItem({
    super.key, this.categoriesData,
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
                child: Image.network(

                  categoriesData?.image?? "https://student.valuxapps.com/storage/uploads/products/163873839146spo.21.jpg",
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              verticalSpace(10),
               Text('  ${categoriesData?.name}' ,  maxLines: 1, overflow: TextOverflow.ellipsis),
               Text('  \$${categoriesData?.price}',style: TextStyles.font16BlackBold,),
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
