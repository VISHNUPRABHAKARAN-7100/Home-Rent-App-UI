import 'package:flutter/material.dart';
import '../../../utils/custom_colors.dart';

class DrawerTab extends StatelessWidget {
  const DrawerTab({
    super.key,
    required this.title,
    required this.iconPath,
  });

  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.45,
      child: Card(
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(30),
          ),
        ),
        child: ListTile(
          leading: Image.asset(
            iconPath,
            width: screenWidth * 0.055,
            height: screenWidth * 0.055,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: CustomColors.mainBlue,
            ),
          ),
        ),
      ),
    );
  }
}
