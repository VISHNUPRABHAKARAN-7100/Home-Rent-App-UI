import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent_ui/home_screen/view/widgets/distance_label.dart';
import 'package:home_rent_ui/home_screen/view/widgets/gradient_image.dart';
import 'package:home_rent_ui/house_details/view/house_details.dart';
import 'package:home_rent_ui/utils/custom_page_route.dart';

class HouseCard extends StatelessWidget {
  final int id;
  final String imageUrl;
  final String distance;
  final String title;
  final String address;

  const HouseCard({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.distance,
    required this.title,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => NavigationUtils.push(
        context,
        HouseDetails(id: id),
      ),
      child: Container(
        height: 290,
        width: 230,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Hero(
              tag: 'house-image-$id',
              child: GradientImage(imageUrl: imageUrl),
            ),
            DistanceLabel(distance: distance),
            Positioned(
              bottom: 10,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    address,
                    style: GoogleFonts.raleway(
                      color: const Color(0xffD7D7D7),
                      fontSize: 14,
                    ),
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
