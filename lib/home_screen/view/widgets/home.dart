import 'package:flutter/material.dart';
import 'package:home_rent_ui/home_screen/provider/home_screen_provider.dart';
import 'package:home_rent_ui/utils/asset_path.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Consumer<HomeScreenProvider>(
      builder: (context, snapShot, child) => AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.translationValues(
            snapShot.xOffset, snapShot.isDrawerOpen ? screenWidth * 0.3 : 0, 0)
          ..scale(snapShot.isDrawerOpen ? 0.9 : 1.00)
          ..rotateX(snapShot.isDrawerOpen ? 0.5 : 0),
        height: screenHeight,
        width: screenWidth,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    snapShot.isDrawerOpen
                        ? GestureDetector(
                            onTap: () => snapShot.openDrawer(),
                            child: const Icon(
                              Icons.close,
                              size: 40,
                            ),
                          )
                        : const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Location",
                                style: TextStyle(
                                  color: Color(0xff838383),
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Payyannur",
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down_sharp)
                                ],
                              ),
                            ],
                          ),
                    GestureDetector(
                      onTap: () => snapShot.openDrawer(),
                      child: Image.asset(
                        AssetPath.drawerIconPath,
                        width: screenWidth * 0.055,
                        height: screenWidth * 0.055,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: const [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
