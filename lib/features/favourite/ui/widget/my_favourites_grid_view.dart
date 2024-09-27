import 'package:flutter/material.dart';
import 'package:snap_shop/features/favourite/data/model/favourite/data_fav.dart';
import 'package:snap_shop/features/favourite/ui/widget/my_favourites_grid_view_item.dart';

class MyFavouriteGridView extends StatelessWidget {
  final List<FavouriteDataList?> favouriteDataList;
  const MyFavouriteGridView({super.key, required this.favouriteDataList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 10.0, 
          mainAxisSpacing: 10.0, 
          childAspectRatio: 1 / 1.6, 
        ),
        itemCount: favouriteDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: MyFavouritesGridViewItem(
              favouritesData: favouriteDataList[index],
            ),
          );
        },
      ),
    );
  }
}
