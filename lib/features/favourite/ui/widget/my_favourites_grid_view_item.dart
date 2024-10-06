import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/favourite/data/model/favourite/data_fav.dart';
import 'package:snap_shop/features/favourite/logic/favourite_cubit.dart';

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
                      height: 100.h,
                      width: 100.w,
                      fit: BoxFit.cover,
                      favouritesData?.product?.image ??
                          'https://student.valuxapps.com/storage/uploads/products/16445230161CiW8.Light bulb-amico.png',
                    ),
                  ),
                ),
                verticalSpace(10),
                Text('${favouritesData?.product?.name}',
                    maxLines: 1, overflow: TextOverflow.ellipsis),
                Text(
                  '\$${favouritesData?.product?.price}',
                  style: TextStyles.font16BlackBold,
                ),
                verticalSpace(10),
              ],
            ),
          ),
        ),
        Positioned(
          right: 15.h,
          top: 15.h,
          child: GestureDetector(
              onTap: () {
                context.read<FavouriteCubit>().addOrRemoveFavourite(
                    productId: favouritesData?.product?.id ?? 0);
              },
              child: Image.asset(
                'assets/images/fav-icon.png',
                height: 40.h,
                width: 40.w,
              )),
        ),
      ],
    );
  }
}
