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
    FavouriteCubit? _favouriteCubit;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // حفظ المرجع إلى الـ Cubit
    _favouriteCubit = context.read<FavouriteCubit>();
  }

  @override
  void dispose() {
    // غلق الـ Cubit هنا بدون الحاجة لاستخدام context
    _favouriteCubit?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
          child: Column(
            children: [
              const FavouriteAppBar(),
              verticalSpace(24),
               const Expanded(
                child: FavouriteBlocBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
