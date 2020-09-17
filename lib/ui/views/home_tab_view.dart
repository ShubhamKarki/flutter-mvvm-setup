import 'package:flutter/material.dart';
import 'package:kitchen_stories/ui/views/base_view.dart';
import 'package:kitchen_stories/utils/constants/app_constants.dart';

class HomeTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, model, child) => Scaffold(
        body: Container(
          color: Colors.blue,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
