import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/widget/custom_show_toast.dart';
import 'package:snap_shop/features/favourite/logic/favourite_cubit.dart';
import 'package:snap_shop/features/home/data/model/products/product.dart';

class MyProductsGridViewItem extends StatelessWidget {
  final ProductDataList? productsData;

  const MyProductsGridViewItem({
    super.key,
    required this.productsData,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavouriteCubit, FavouriteState>(
      listener: (context, state) {
        state.maybeWhen(
          addOrRemoveFavouriteSuccess: () {
            showToast(msg: 'Succesfully', state: ToastStates.SUCCESS);
          },
          addOrRemoveFavouriteError: () {
            showToast(msg: 'Failed', state: ToastStates.ERROR);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
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
                            return Icon(Icons.error);
                          },
                          height: 100.h,
                          width: 100.w,
                          fit: BoxFit.cover,
                          productsData?.image ?? 'https://student.valuxapps.com/storage/uploads/products/163873839146spo.21.jpg',
                        ),
                      ),
                    ),
                    verticalSpace(10),
                    Text(' ${productsData?.name} ',
                        maxLines: 1, overflow: TextOverflow.ellipsis),
                    Row(
                      children: [
                        Text('  \$${productsData?.price} '),
                        Text(
                          '\$${productsData?.oldPrice}',
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(10),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 15.h,
              top: 15.h,
              child: context
                      .read<FavouriteCubit>()
                      .favoriteID
                      .contains(productsData!.id.toString())
                  ? GestureDetector(
                      onTap: () {
                        context
                            .read<FavouriteCubit>()
                            .addOrRemoveFavourite(productId: productsData!.id!);
                      },
                      child: Image.asset(
                        'assets/images/fav-icon.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        context
                            .read<FavouriteCubit>()
                            .addOrRemoveFavourite(productId: productsData!.id!);
                      },
                      child: Image.asset(
                        'assets/images/Frame 16.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
            )
          ],
        );
      },
    );
  }
}
