import 'package:flutter/material.dart';
import 'package:home_rent_ui/utils/custom_enums.dart';

class HomeScreenProvider with ChangeNotifier {
  bool isDrawerOpen = false;
  double xOffset = 0;

  DrawerList currentTab = DrawerList.home;

  void openDrawer() {
    if (isDrawerOpen) {
      isDrawerOpen = false;
      xOffset = 0;
    } else {
      xOffset = 250;
      isDrawerOpen = true;
    }
    notifyListeners();
  }

  switchTab({required DrawerList tab}) {
    currentTab = tab;
    notifyListeners();
  }
}
