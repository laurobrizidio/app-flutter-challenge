import 'package:app_flutter_challenge/home_screen/model/image_net.dart';
import 'package:app_flutter_challenge/home_screen/view/home_screen.dart';
import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:app_flutter_challenge/splash_screen/splash_screen.dart';
import 'package:app_flutter_challenge/viewer_screen/viewer_screen.dart';
import 'package:flutter/material.dart';

class RoutesGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    Object? args = settings.arguments;

    switch (settings.name) {
      case RoutesName.goToSplash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RoutesName.goToHome:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.goToViewer:
        if (args != null && args is ImageNet) {
          return MaterialPageRoute(
              builder: (context) => Viewer(imageNet: args));
        }
        break;
      default:
        return null;
    }
  }
}
