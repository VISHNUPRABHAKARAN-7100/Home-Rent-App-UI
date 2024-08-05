import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_rent_ui/home_screen/model/house_model.dart';
import 'package:home_rent_ui/utils/custom_colors.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final house = allHouseList.firstWhere((e) => e.id == id);

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: CustomColors.backgroundBg,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Hero(
                tag: 'house-image-$id',
                child: Image.network(
                  house.image,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
