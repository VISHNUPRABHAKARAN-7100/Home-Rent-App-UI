import 'package:flutter/material.dart';
import 'package:home_rent_ui/utils/custom_enums.dart';

class HomeScreenProvider with ChangeNotifier {
  bool isDrawerOpen = false;
  double xOffset = 0;

  DrawerList currentDrawerTab = DrawerList.home;

  HomeTabsEnum currentHomeTab = HomeTabsEnum.house;

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

  switchDrawerTab({required DrawerList tab}) {
    currentDrawerTab = tab;
    notifyListeners();
  }

  switchHomeTab({required HomeTabsEnum homeTab}) {
    currentHomeTab = homeTab;
    notifyListeners();
  }
}
