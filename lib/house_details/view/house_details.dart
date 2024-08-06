import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent_ui/home_screen/model/house_model.dart';
import 'package:home_rent_ui/home_screen/view/widgets/section_title.dart';
import 'package:home_rent_ui/house_details/provider/house_details_provider.dart';
import 'package:home_rent_ui/utils/custom_colors.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'widgets/description_section.dart';
import 'widgets/house_image_with_overlay.dart';
import 'widgets/owner_contact_section.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final house = allHouseList.firstWhere((e) => e.id == id);

    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: PopScope(
        onPopInvokedWithResult: (didPop, result) =>
            Provider.of<HouseDetailsProvider>(context, listen: false)
                .isExpanded = false,
        child: Scaffold(
          body: ListView(
            padding: EdgeInsets.zero,
            children: [
              HouseImageWithOverlay(
                id: id,
                house: house,
                onBackPressed: () {
                  Provider.of<HouseDetailsProvider>(context, listen: false)
                      .isExpanded = false;
                  Navigator.pop(context);
                },
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
                    DescriptionSection(house: house),
                    const SizedBox(height: 10),
                    OwnerContactSection(
                      house: house,
                      onCallPressed: () =>
                          launchUrlString("tel://${house.ownerContact}"),
                      onMessagePressed: () async => await launchUrl(
                        Uri.parse(
                            "https://wa.me/${house.ownerContact}?text=Hello"),
                      ),
                    ),
                    const SectionTitle(
                      title: "Gallery",
                      actionText: "",
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: screenWidth * 0.2,
                      child: ListView.builder(
                        itemCount:
                            house.images.length < 4 ? house.images.length : 4,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          if (index == 3 && house.images.length > 4) {
                            // Display the fourth image with the overlay text
                            return Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                        house.images[index],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  margin: const EdgeInsets.only(right: 10),
                                  height: screenWidth * 0.2,
                                  width: screenWidth * 0.2,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: screenWidth * 0.2,
                                  width: screenWidth * 0.2,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black54,
                                  ),
                                  child: Text(
                                    '+${house.images.length - 4}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          } else {
                            // Display other images
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    house.images[index],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 10),
                              height: screenWidth * 0.2,
                              width: screenWidth * 0.2,
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
            child: Container(
              color: CustomColors.backgroundBg,
              height: 60,
              width: screenWidth,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: screenWidth * 0.6,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: GoogleFonts.raleway(),
                        ),
                        Text(
                          "Rp. ${house.yearlyRent} / Year",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.05,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffA0DAFB),
                          Color(0xff0A8ED9),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Rent Now",
                      style: GoogleFonts.raleway(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
