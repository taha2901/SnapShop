import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/features/home/data/model/products/product.dart';

class MyProductsGridViewItem extends StatelessWidget {
  final ProductDataList? productsData;

  const MyProductsGridViewItem({
    super.key,
    required this.productsData,
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
                      height: 100.h,
                      width: 100.w,
                      fit: BoxFit.cover,
                      productsData?.image ??
                          'https://student.valuxapps.com/storage/uploads/products/16445230161CiW8.Light bulb-amico.png',
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
          right: 5.h,
          top: 5.h,
          child: IconButton(
            onPressed: () {
            
            },
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

