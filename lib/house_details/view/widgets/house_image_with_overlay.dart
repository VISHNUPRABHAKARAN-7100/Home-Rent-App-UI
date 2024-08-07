import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent_ui/house_details/provider/house_details_provider.dart';
import 'package:home_rent_ui/utils/custom_colors.dart';
import 'package:provider/provider.dart';

import '../../../home_screen/model/house_model.dart';
import '../../../utils/asset_path.dart';

class HouseImageWithOverlay extends StatelessWidget {
  const HouseImageWithOverlay({
    super.key,
    required this.id,
    required this.house,
    required this.onBackPressed,
  });

  final int id;
  final HouseModel house;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        // House Image with Gradient Overlay
        Hero(
          tag: 'house-image-$id',
          child: Container(
            height: screenHeight * 0.3,
            width: screenWidth,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  house.image,
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
        ),
        // Back Button
        Positioned(
          left: 30,
          child: SafeArea(
            child: GestureDetector(
              onTap: onBackPressed,
              child: const CircleAvatar(
                backgroundColor: Color(0xffbebebe),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        // Bookmark Button
        Consumer<HouseDetailsProvider>(
          builder: (context, snapShot, child) => Positioned(
            right: 30,
            child: SafeArea(
              child: GestureDetector(
                onTap: () => snapShot.addToFavoriteHouse(house),
                child: CircleAvatar(
                  backgroundColor: const Color(0xffbebebe),
                  child: snapShot.favoriteHouse.contains(house)
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
          ),
        ),
        // House Details,
        // 1. Title
        // 2. Address
        // 3. Number of available bedrooms
        // 4. Number of available bathrooms
        Positioned(
          bottom: 30,
          left: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                house.title,
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                house.address,
                style: GoogleFonts.raleway(
                  color: const Color(0xffD7D7D7),
                  fontSize: 14,
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          AssetPath.bedIconPath,
                          height: 20,
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "${house.bedrooms} Bedroom",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 25),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          AssetPath.bathIconPath,
                          height: 20,
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "${house.bathrooms} Bathroom",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
