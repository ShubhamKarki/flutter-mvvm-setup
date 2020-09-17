import 'package:flutter/material.dart';
import 'package:kitchen_stories/ui/views/home.dart';
import 'package:kitchen_stories/ui/views/splash_screen.dart';
import 'package:kitchen_stories/utils/constants/app_constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
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
