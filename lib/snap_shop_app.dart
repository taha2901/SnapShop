import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/di/dependency_injection.dart';
import 'package:snap_shop/core/helpers/constants.dart';
import 'package:snap_shop/core/routings/app_router.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/features/cart/logic/cart_cubit.dart';
import 'package:snap_shop/features/favourite/logic/favourite_cubit.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';

class SnapShop extends StatelessWidget {
  final AppRouter appRouter;
  const SnapShop({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getit<HomeCubit>()
                ..getCategories()
                ..getProducts(),
            ),
            BlocProvider(
              create: (context) => getit<CartCubit>()..getCart(),
            ),
            BlocProvider(
              create: (context) => getit<FavouriteCubit>()..getFavourites(),
            ),
          ],
          child: MaterialApp(
            title: 'Snap Shop',
            theme: ThemeData(
              primaryColor: ColorsManager.mainColor,
              scaffoldBackgroundColor: Colors.white,
              useMaterial3: true,
            ),
            initialRoute: isLoggedInUser ? Routers.layoutShop : Routers.login,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: appRouter.generateRoute,
          ),
        );
      },
    );
  }
}
