import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/di/dependency_injection.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/features/home/logic/home_cubit.dart';
import 'package:snap_shop/features/home/ui/home_screen.dart';
import 'package:snap_shop/features/home/ui/widget/categories_screen_list_view.dart';
import 'package:snap_shop/features/home/ui/widget/category/categories_details_grid_view.dart';
import 'package:snap_shop/features/layout/ui/souq_layout.dart';
import 'package:snap_shop/features/login/logic/login_cubit.dart';
import 'package:snap_shop/features/login/ui/login_screen.dart';
import 'package:snap_shop/features/register/logic/register_cubit.dart';
import 'package:snap_shop/features/register/ui/sign_up_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routers.souqLayout:
        return MaterialPageRoute(
          builder: (_) => const SouqLayout(),
        );
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
          builder: (_) => BlocProvider(
            create: (context) => getit<HomeCubit>()..getCategories()..getProducts(),
            child: const HomeScreen(),
          ),
        );
      case Routers.categories:
        return MaterialPageRoute(
          builder: (_) => const CategoriesScreen(),
        );
      case Routers.categoriesDetailsGridView:
      return MaterialPageRoute(
        builder: (_) => const CategoriesDetailsGridView(),
      );
      default:
        return null;
    }
  }
}
