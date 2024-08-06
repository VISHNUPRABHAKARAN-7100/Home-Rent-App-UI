import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent_ui/home_screen/model/house_model.dart';
import 'package:home_rent_ui/utils/asset_path.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final house = allHouseList.firstWhere((e) => e.id == id);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
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
                        image: NetworkImage(house.image),
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
                // Back and Bookmark Buttons
                Positioned(
                  left: 30,
                  child: SafeArea(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
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
                Positioned(
                  right: 30,
                  child: SafeArea(
                    child: CircleAvatar(
                      backgroundColor: const Color(0xffbebebe),
                      child: Image.asset(
                        AssetPath.bookmarkWhiteIconPath,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
                // House Details
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
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    house.description,
                    style: GoogleFonts.raleway(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
