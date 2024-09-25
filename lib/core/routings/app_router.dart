import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/di/dependency_injection.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/core/widget/bottom_nav_bar.dart';
import 'package:snap_shop/features/cart/data/model/cart_response_model/product.dart';
import 'package:snap_shop/features/cart/logic/cart_cubit.dart';
import 'package:snap_shop/features/cart/ui/checkout_screen.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/ui/home_screen.dart';
import 'package:snap_shop/features/home/ui/product_details_screen.dart';
import 'package:snap_shop/features/home/ui/widget/all_category_screen/categories_screen_bloc_builder.dart';
import 'package:snap_shop/features/login/logic/login_cubit.dart';
import 'package:snap_shop/features/login/ui/login_screen.dart';
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
          builder: (_) => const HomeScreen(),
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
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getit<HomeCubit>()
                  ..getCategories()
                  ..getProducts(),
              ),
              BlocProvider(
                create: (context) => getit<CartCubit>()..getCart(),
              ),
            ],
            child: const LayoutShop(),
          ),
        );

      case Routers.checkout:
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());

      case Routers.productDetails:
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());

      default:
        return null;
    }
  }
}
