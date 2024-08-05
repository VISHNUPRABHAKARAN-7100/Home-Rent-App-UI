import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent_ui/home_screen/provider/home_screen_provider.dart';
import 'package:home_rent_ui/home_screen/view/widgets/home_search_filed.dart';
import 'package:home_rent_ui/home_screen/view/widgets/house_card.dart';
import 'package:home_rent_ui/utils/asset_path.dart';
import 'package:provider/provider.dart';
import '../../model/house_model.dart';
import 'home_app_bar.dart';
import 'home_tabs.dart';
import 'section_title.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(snapShot.isDrawerOpen ? 30 : 0),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const HomeAppBar(),
              const HomeSearchField(),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: [
                    const SizedBox(height: 20),
                    const HomeTabs(),
                    const SizedBox(height: 20),
                    const SectionTitle(
                      title: "Near from you",
                      actionText: "See more",
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 290,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(right: 20),
                        scrollDirection: Axis.horizontal,
                        itemCount: homeList.length,
                        itemBuilder: (context, index) {
                          final house = homeList[index];
                          return HouseCard(
                            imageUrl: house.image,
                            distance: "${house.distance} km",
                            title: house.title,
                            address: house.address,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SectionTitle(
                      title: "Best for you",
                      actionText: "See more",
                    ),
                    const SizedBox(height: 20),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: bestForYouList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final house = bestForYouList[index];
                        return BestForYouCard(
                          imageUrl: house.image,
                          title: house.title,
                          rentPerYear: house.yearlyRent,
                          bathRoomCount: house.bathrooms,
                          bedRoomCount: house.bedrooms,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BestForYouCard extends StatelessWidget {
  const BestForYouCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rentPerYear,
    required this.bathRoomCount,
    required this.bedRoomCount,
  });

  final String imageUrl;
  final String title;
  final double rentPerYear;
  final int bathRoomCount;
  final int bedRoomCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Rp. $rentPerYear / Year",
                    style: GoogleFonts.raleway(
                      color: const Color(0xff0A8ED9),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AssetPath.bedIconPath,
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "$bedRoomCount Bedroom",
                            style: GoogleFonts.raleway(),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Image.asset(
                            AssetPath.bathIconPath,
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "$bathRoomCount Bathroom",
                            style: GoogleFonts.raleway(),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
