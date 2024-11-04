import 'package:batu_nw/core/routes/routes.dart';
import 'package:batu_nw/features/auth_screen/login_screen/view/login_screen.dart';
import 'package:batu_nw/features/auth_screen/register_screen/view/register_screen.dart';
import 'package:batu_nw/features/introducation_screen/intro_screen/view/intro_screen.dart';
import 'package:batu_nw/features/introducation_screen/splash_screen/view/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.splashScreen:
      return MaterialPageRoute(
          builder: (context) => const SplashScreen(), settings: routeSettings);
    case AppRoutes.introScreen:
      return MaterialPageRoute(
          builder: (context) => const IntroScreen(), settings: routeSettings);
    case AppRoutes.loginScreen:
      return MaterialPageRoute(
          builder: (context) => const LoginScreen(), settings: routeSettings);
    case AppRoutes.registerScreen:
      return MaterialPageRoute(
          builder: (context) =>  RegisterScreen(),
          settings: routeSettings);

    default:
      return MaterialPageRoute(
          builder: (context) => const IntroScreen(), settings: routeSettings);
  }
}
