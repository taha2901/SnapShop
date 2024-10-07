import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/favourite/logic/favourite_cubit.dart';
import 'package:snap_shop/features/home/data/model/categories_details_response_model/datum.dart';
import 'package:snap_shop/features/home/data/model/products/product.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';

class CategoriesDetailsGridViewItem extends StatelessWidget {
  final CategoriesDetailsDataList? categoriesData;
  final ProductDataList? productsData;
  const CategoriesDetailsGridViewItem({
    super.key,
    this.categoriesData, this.productsData,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavouriteCubit, FavouriteState>(
      listener: (context, state) {
      },
      builder: (context, state) {
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
                    child: Center(
                      child: Image.network(
                        categoriesData?.image ??
                            "https://student.valuxapps.com/storage/uploads/products/163873839146spo.21.jpg",
                        // width: double.infinity,
                        height: 100.h,
                        width: 100.w,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  verticalSpace(10),
                  Text('  ${categoriesData?.name}',
                      maxLines: 1, overflow: TextOverflow.ellipsis),
                  Text(
                    '  \$${categoriesData?.price}',
                    style: TextStyles.font16BlackBold,
                  ),
                  verticalSpace(10),
                ],
              ),
            ),
            // Positioned(
            //   right: 5.h,
            //   top: 5.h,
            //   child: context
            //           .read<FavouriteCubit>()
            //           .favoriteID
            //           .contains(productsData?.id.toString())
            //       ? GestureDetector(
            //           onTap: () {
            //             context
            //                 .read<FavouriteCubit>()
            //                 .addOrRemoveFavourite(productId: productsData!.id!);
            //           },
            //           child: Image.asset(
            //             'assets/images/fav-icon.png',
            //             height: 40.h,
            //             width: 40.w,
            //           ),
            //         )
            //       : GestureDetector(
            //           onTap: () {
            //             context
            //                 .read<FavouriteCubit>()
            //                 .addOrRemoveFavourite(productId: productsData!.id!);
            //           },
            //           child: Image.asset(
            //             'assets/images/Frame 16.png',
            //             height: 40.h,
            //             width: 40.w,
            //           ),
                    
                    
            //   ),
            // ),
          ],
        );
      },
    );
  }
}
