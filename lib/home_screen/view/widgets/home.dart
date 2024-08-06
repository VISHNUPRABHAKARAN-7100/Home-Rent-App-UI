import 'package:flutter/material.dart';
import 'package:home_rent_ui/home_screen/provider/home_screen_provider.dart';
import 'package:home_rent_ui/home_screen/view/widgets/house_search_filed.dart';
import 'package:home_rent_ui/home_screen/view/widgets/house_card.dart';
import 'package:provider/provider.dart';
import '../../model/house_model.dart';
import 'best_for_you_card.dart';
import 'house_app_bar.dart';
import 'house_tabs.dart';
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
              // Contains
              // 1. Button for open drawer.
              // 2. Current location(it is dummy right now).
              const HomeAppBar(),
              const HomeSearchField(),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  children: [
                    const SizedBox(height: 20),
                    // Tabs for select different types of category.
                    const HomeTabs(),
                    const SizedBox(height: 20),

                    const SectionTitle(
                      title: "Near from you",
                      actionText: "See more",
                    ),

                    const SizedBox(height: 20),

                    // Home list.
                    SizedBox(
                      height: 290,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: homeList.length,
                        itemBuilder: (context, index) {
                          final house = homeList[index];
                          return HouseCard(
                            id: house.id,
                            imageUrl: house.image,
                            distance: house.distance,
                            title: house.title,
                            address: house.address,
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 20),

                    if (bestForYouList.isNotEmpty) ...[
                      const SectionTitle(
                        title: "Best for you",
                        actionText: "See more",
                      ),
                      const SizedBox(height: 20),
                    ],

                    // Best for you list.
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: bestForYouList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final house = bestForYouList[index];
                        return BestForYouCard(
                          id: house.id,
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
