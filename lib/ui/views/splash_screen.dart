import 'package:flutter/material.dart';
import 'package:kitchen_stories/ui/views/base_view.dart';
import 'package:kitchen_stories/utils/constants/app_constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    nextScreen() {
      Future.delayed(
        Duration(
          milliseconds: 1300,
        ),
      ).then((value) {
        Navigator.pushReplacementNamed(context, RoutePaths.Home);
      });
    }

    return BaseWidget(
      onModelReady: (model) => nextScreen(),
      builder: (context, model, child) => Scaffold(
        body: Container(
          color: Colors.yellow,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
