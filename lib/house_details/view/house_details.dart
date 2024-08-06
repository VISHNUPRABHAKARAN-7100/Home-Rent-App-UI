import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent_ui/home_screen/model/house_model.dart';
import 'package:home_rent_ui/house_details/provider/house_details_provider.dart';
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      onCallPressed: () {
                        launchUrlString("tel://${house.ownerContact}");
                      },
                      onMessagePressed: () async {
                        await launchUrl(
                          Uri.parse(
                              "https://wa.me/${house.ownerContact}?text=Hello"),
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
