import 'package:flutter/material.dart';
import 'package:myapp/core/routing/routes.dart';
import 'package:myapp/features/login_screen/ui/login_screen.dart';
import 'package:myapp/features/onboarding_screen/ui/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_)=> const OnBoardingScreen(),
          );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_)=> const LoginScreen(),
          );
      default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}