import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent_ui/house_details/provider/house_details_provider.dart';
import 'package:provider/provider.dart';

import '../../home_screen/provider/home_screen_provider.dart';
import '../../utils/asset_path.dart';
import '../../utils/custom_colors.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Consumer<HomeScreenProvider>(
        builder: (context, snapShot, child) => AnimatedContainer(
          padding: const EdgeInsets.all(10.0),
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.translationValues(snapShot.xOffset,
              snapShot.isDrawerOpen ? screenWidth * 0.3 : 0, 0)
            ..scale(snapShot.isDrawerOpen ? 0.9 : 1.00)
            ..rotateX(snapShot.isDrawerOpen ? 0.5 : 0),
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(snapShot.isDrawerOpen ? 30 : 0),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Button for open drawer.
                    snapShot.isDrawerOpen
                        ? GestureDetector(
                            onTap: () => snapShot.openDrawer(),
                            child: const Icon(
                              Icons.close,
                              size: 40,
                            ),
                          )
                        : GestureDetector(
                            onTap: () => snapShot.openDrawer(),
                            child: Image.asset(
                              AssetPath.drawerIconPath,
                              width: screenWidth * 0.055,
                              height: screenWidth * 0.055,
                            ),
                          ),
                    Text(
                      "Wishlist",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                Consumer<HouseDetailsProvider>(
                  builder: (context, snapShot, child) {
                    if (snapShot.bookmarkedHouse.isEmpty) {
                      return SizedBox(
                        height: screenHeight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/gifs/empty_wishlist.gif",
                            ),
                            Text(
                              "Wishlist looks empty",
                              style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: snapShot.bookmarkedHouse.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    height: screenHeight * 0.3,
                                    width: screenWidth,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                          snapShot.bookmarkedHouse[index].image,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.transparent,
                                            Colors.black87,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: GestureDetector(
                                      onTap: () => snapShot.bookmarkHouse(
                                          snapShot.bookmarkedHouse[index]),
                                      child: CircleAvatar(
                                        backgroundColor:
                                            const Color(0xffbebebe),
                                        child: snapShot.bookmarkedHouse
                                                .contains(snapShot
                                                    .bookmarkedHouse[index])
                                            ? Icon(
                                                Icons.favorite,
                                                color: CustomColors.mainBlue,
                                              )
                                            : const Icon(
                                                color: Colors.white,
                                                Icons.favorite_border,
                                              ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              snapShot.bookmarkedHouse[index].title,
                              style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontSize: screenWidth * 0.055,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Rp. ${snapShot.bookmarkedHouse[index].yearlyRent.toString()} / Year",
                              style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
