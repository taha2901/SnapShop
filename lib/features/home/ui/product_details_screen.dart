import 'package:flutter/material.dart';

import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/home/data/model/products/product.dart';
import 'package:snap_shop/features/home/ui/widget/product_details/app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductDataList? productDataList;
  const ProductDetailsScreen({super.key, this.productDataList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductDetailsAppBar(),
              verticalSpace(24),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border:  Border.all(
                          color: ColorsManager.lightGrey,
                        )
                      ),
                      child: Image.network(
                        productDataList?.images?[index] ?? '',
                        width: MediaQuery.of(context).size.width * 0.6,
                      ),
                    );
                  },
                  itemCount: productDataList?.images?.length ?? 0,
                ),
              ),
              verticalSpace(24),
              Text(
                '${productDataList?.name}',
                style: TextStyles.font16BlackBold,
              ),
              verticalSpace(24),
              Text(
                '\$${productDataList?.price}',
                style: TextStyles.font16MainColorMedium,
              ),
              verticalSpace(24),
              // desciption
              Text(
                '${productDataList?.description}',
                style: TextStyles.font12greyRegular,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: ColorsManager.mainColor,
                    borderRadius: BorderRadius.circular(25)),
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        '\$${productDataList?.price}',
                        style: const TextStyle(color: Colors.white),
                      ),
                      const Spacer(),
                      const Text(
                        'Add To Bag',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(34),
            ],
          ),
        ),
      ),
    );
  }
}