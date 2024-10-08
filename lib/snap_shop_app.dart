import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/di/dependency_injection.dart';
import 'package:snap_shop/core/helpers/constants.dart';
import 'package:snap_shop/core/routings/app_router.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/features/address/logic/address_cubit.dart';
import 'package:snap_shop/features/address/ui/address_screen.dart';
import 'package:snap_shop/features/cart/logic/cart_cubit.dart';
import 'package:snap_shop/features/favourite/logic/favourite_cubit.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/logout/logic/cubit/logout_cubit.dart';
import 'package:snap_shop/features/notification/logic/notification_cubit.dart';
import 'package:snap_shop/features/profile/logic/profile_cubit.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
            BlocProvider<LogoutCubit>(
              create: (context) => getit<LogoutCubit>(),
            ),
            BlocProvider(
              create: (context) => getit<CartCubit>()..getCart(),
            ),
            BlocProvider(
              create: (context) =>
                  getit<NotificationCubit>()..getNotification(),
            ),
            BlocProvider(
              create: (context) => getit<FavouriteCubit>()..getFavourites(),
            ),
            BlocProvider(
              create: (context) => getit<ProfileCubit>()..getUserData(),
            ),
            BlocProvider(
              create: (context) =>
                  getit<AddressCubit>()..emitGetAddressStates(),
              child: const AddressScreen(),
            ),
          ],
          child: ConnectivityAppWrapper(
            app: MaterialApp(
              navigatorKey: navigatorKey,
              title: 'Shopping',
              theme: ThemeData(
                primaryColor: ColorsManager.mainColor,
                scaffoldBackgroundColor: Colors.white,
                useMaterial3: true,
              ),
              initialRoute: isLoggedInUser ? Routers.layoutShop : Routers.login,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: appRouter.generateRoute,
              builder: (buildContext, widget) {
                return ConnectivityWidgetWrapper(
                  disableInteraction: true,
                  height: 80,
                  child: widget!,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
