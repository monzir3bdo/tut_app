import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/presentation/forget_password/forget_password.dart';
import 'package:flutter_advanced_course/presentation/login/login.dart';
import 'package:flutter_advanced_course/presentation/main/main.dart';
import 'package:flutter_advanced_course/presentation/onboarding/onboarding.dart';
import 'package:flutter_advanced_course/presentation/register/register.dart';
import 'package:flutter_advanced_course/presentation/resources/strings_manager.dart';
import 'package:flutter_advanced_course/presentation/splash/splash.dart';
import 'package:flutter_advanced_course/presentation/store_detailed/store_detailed.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgetPasswordRoute = '/forget';
  static const String mainRoute = '/main';
  static const String storeDetailedRoute = '/storeDetailed';
}

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) => const RegisterView(),
        );
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordView(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (_) => const MainView(),
        );
      case Routes.storeDetailedRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailedView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body:const Center(child: Text(AppStrings.noRouteFound),),
      ),
    );
  }
}
