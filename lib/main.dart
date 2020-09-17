import 'package:flutter/material.dart';
import 'package:kitchen_stories/router.dart';
import 'package:kitchen_stories/utils/constants/app_constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RoutePaths.Splash,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
