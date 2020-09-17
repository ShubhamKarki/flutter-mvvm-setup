import 'package:flutter/material.dart';
import 'package:kitchen_stories/core/viewmodels/base_view_model.dart';
import 'package:kitchen_stories/ui/views/create_tab_view.dart';
import 'package:kitchen_stories/ui/views/home_tab_view.dart';
import 'package:kitchen_stories/ui/views/profile_tab_view.dart';
import 'package:kitchen_stories/ui/views/search_tab_view.dart';
import 'package:kitchen_stories/ui/views/shopping_tab_view.dart';

class HomeViewModel extends BaseViewModel {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  get currentTab => tabs[_currentIndex];

  final tabs = [
    Center(
      child: HomeTabView(),
    ),
    Center(
      child: SearchTabView(),
    ),
    Center(
      child: CreateTabView(),
    ),
    Center(
      child: ShoppingListTabView(),
    ),
    Center(
      child: ProfileTabView(),
    ),
  ];

  tabNavigationBar(index) {
    _currentIndex = index;
    notifyListeners();
  }
}
