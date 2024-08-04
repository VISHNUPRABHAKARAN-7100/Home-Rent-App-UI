import 'package:flutter/material.dart';

class HomeScreenProvider with ChangeNotifier {
  bool isDrawerOpen = false;
  double xOffset = 0;

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
}
