import 'package:flutter/material.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/features/login/ui/login_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routers.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      // case Routers.login:
      //   return MaterialPageRoute(
      //     builder: (_) => const LoginScreen(),
      //   );
      // case Routers.home:
      //   return MaterialPageRoute(
      //     builder: (_) => const LoginScreen(),
      //   );
      default:
        return null;
    }
  }
}
