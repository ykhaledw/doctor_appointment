import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/di/dependency_injection.dart';
import 'package:myapp/core/routing/routes.dart';
import 'package:myapp/features/home_screen/ui/home_screen.dart';
import 'package:myapp/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:myapp/features/login_screen/ui/login_screen.dart';
import 'package:myapp/features/onboarding_screen/ui/onboarding_screen.dart';
import 'package:myapp/features/sign_up_screen/logic/cubit/sign_up_cubit.dart';
import 'package:myapp/features/sign_up_screen/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
        );
        case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
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
