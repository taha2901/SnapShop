import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/di/dependency_injection.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/widget/bottom_nav_bar.dart';
import 'package:snap_shop/core/widget/fcm.dart';
import 'package:snap_shop/features/address/logic/address_cubit.dart';
import 'package:snap_shop/features/address/ui/add_address_screen.dart';
import 'package:snap_shop/features/address/ui/address_screen.dart';
import 'package:snap_shop/features/cart_details/ui/thank_you_view.dart';
import 'package:snap_shop/features/favourite/ui/favourite_screen.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/ui/product_details_screen.dart';
import 'package:snap_shop/features/home/ui/widget/all_category_screen/categories_screen_bloc_builder.dart';
import 'package:snap_shop/features/login/logic/login_cubit.dart';
import 'package:snap_shop/features/login/ui/login_screen.dart';
import 'package:snap_shop/features/profile/logic/profile_cubit.dart';
import 'package:snap_shop/features/profile/ui/widget/change_password_screen.dart';
import 'package:snap_shop/features/profile/ui/widget/update_user_data_screen.dart';
import 'package:snap_shop/features/register/logic/register_cubit.dart';
import 'package:snap_shop/features/register/ui/sign_up_screen.dart';
import '../../features/home/ui/widget/all_categories_details/categories_details_grid_view_bloc_builder.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routers.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routers.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );
      case Routers.home:
        return MaterialPageRoute(
          builder: (_) => const LayoutShop(),
        );
      case Routers.categories:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<HomeCubit>()..getCategories(),
            child: const CategoriesScreenBlocBuilder(),
          ),
        );
      case Routers.categoriesDetails:
        final categoryId = arguments as int; // استلام categoryId من arguments
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) =>
                  getit<HomeCubit>()..getCategoriesDetails(categoryId),
              child: CategoriesDetailsBlocBuilder(
                categoryId: categoryId,
              )),
        );

      case Routers.layoutShop:
        return MaterialPageRoute(
          builder: (_) => const LayoutShop(),
        );

      case Routers.fcm:
        return MaterialPageRoute(
          builder: (_) => FCMScreen(),
        );
      case Routers.thankYouView:
        return MaterialPageRoute(
          builder: (_) => const ThankYouView(),
        );

      case Routers.changePassword:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getit<ProfileCubit>(),
                  child: ChangePasswordScreen(),
                ));

      case Routers.updateProfile:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<ProfileCubit>()..getUserData(),
            child: UpdateUserDataScreen(),
          ),
        );

      case Routers.productDetails:
        return MaterialPageRoute(
          builder: (_) => const ProductDetailsScreen(),
        );

      case Routers.addAddress:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<AddressCubit>(),
            child: const AddAddressScreen(),
          ),
        );

      case Routers.address:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<AddressCubit>()..emitGetAddressStates(),
            child: const AddressScreen(),
          ),
        );

      case Routers.favourite:
        return MaterialPageRoute(
          builder: (_) => const FavouriteScreen(),
        );

      default:
        return null;
    }
  }
}
