import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/features/favourite/logic/favourite_cubit.dart';
import 'package:snap_shop/features/favourite/ui/widget/favourite_app_bar.dart';
import 'package:snap_shop/features/favourite/ui/widget/my_favourites_bloc_builder.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
          child: BlocConsumer<FavouriteCubit, FavouriteState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Column(
                children: [
                  const FavouriteAppBar(),
                  verticalSpace(24),
                  Expanded(
                    child: FavouriteBlocBuilder(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
