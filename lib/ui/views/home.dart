import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:kitchen_stories/core/viewmodels/home_view_model.dart';
import 'package:kitchen_stories/ui/views/base_view.dart';
import 'package:kitchen_stories/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
    return BaseWidget<HomeViewModel>(
      model: HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Container(
          child: model.currentTab,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          iconSize: 22,
          elevation: 0,
          selectedIconTheme: IconThemeData(size: 25),
          unselectedItemColor: kLightGrey,
          currentIndex: model.currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text(
                "",
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
                title: new Container(height: 5.0),
                icon: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: primaryColor.withOpacity(0.4),
                          blurRadius: 40,
                          offset: Offset(0, 15)),
                      BoxShadow(
                          color: primaryColor.withOpacity(0.4),
                          blurRadius: 13,
                          offset: Offset(0, 3))
                    ],
                  ),
                  child:
                      new Icon(Icons.add_circle_outline, color: Colors.white),
                )),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text(""),
            ),
          ],
          onTap: (index) {
            model.tabNavigationBar(index);
          },
        ),
      ),
    );
  }
}
