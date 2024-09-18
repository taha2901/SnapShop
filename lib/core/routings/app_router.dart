import 'package:flutter/material.dart';
import 'package:snap_shop/core/routings/routers.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routers.onBoarding:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Container(
                color: Colors.blue,
                child: const Text('onBoarding'),
              ),
            ),
          ),
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
