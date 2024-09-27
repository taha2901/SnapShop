import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/favourite/data/model/favourite/data_fav.dart';

class MyFavouritesGridViewItem extends StatelessWidget {
  final FavouriteDataList? favouritesData;

  const MyFavouritesGridViewItem({
    super.key,
    this.favouritesData,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: Image.network(
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error);
                      },
                      height: 200.h,
                      width: 200.w,
                      fit: BoxFit.cover,
                      favouritesData?.product?.image ??
                          'https://student.valuxapps.com/storage/uploads/products/16445230161CiW8.Light bulb-amico.png',
                    ),
                  ),
                ),
                verticalSpace(10),
                Text('${favouritesData?.product?.name}',
                    maxLines: 1, overflow: TextOverflow.ellipsis),
                Text('\$${favouritesData?.product?.price}',style:  TextStyles.font16BlackBold,),
                verticalSpace(10),
              ],
            ),
          ),
        ),
        Positioned(
          right: 5.h,
          top: 5.h,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_rounded,
              size: 24.sp,
            ),
          ),
        ),
      ],
    );
  }
}
