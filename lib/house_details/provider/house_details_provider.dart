import 'package:flutter/material.dart';
import 'package:home_rent_ui/home_screen/model/house_model.dart';

class HouseDetailsProvider with ChangeNotifier {
  bool _isExpanded = false;

  bool get isExpanded => _isExpanded;

  void toggleExpansion() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }

  // Setter for isExpanded
  set isExpanded(bool value) {
    if (_isExpanded != value) {
      _isExpanded = value;
      notifyListeners();
    }
  }

  bool showShimmer = true;

  disableShimmer() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        showShimmer = false;
        notifyListeners();
      },
    );
  }

  List<HouseModel> bookmarkedHouse = [];

  void bookmarkHouse(HouseModel model) {
    if (!bookmarkedHouse.contains(model)) {
      bookmarkedHouse.add(model);
    } else {
      bookmarkedHouse.remove(model);
    }
    notifyListeners();
  }
}
