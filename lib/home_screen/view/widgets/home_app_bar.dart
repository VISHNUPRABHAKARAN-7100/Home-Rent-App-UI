import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/asset_path.dart';
import '../../provider/home_screen_provider.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Consumer<HomeScreenProvider>(
        builder: (context, snapShot, child) => Row(
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
    );
  }
}
