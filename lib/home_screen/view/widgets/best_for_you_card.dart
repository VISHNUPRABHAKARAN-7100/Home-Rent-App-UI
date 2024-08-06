import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent_ui/utils/custom_colors.dart';

import '../../../house_details/view/house_details.dart';
import '../../../utils/asset_path.dart';
import '../../../utils/custom_page_route.dart';

class BestForYouCard extends StatelessWidget {
  const BestForYouCard({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.rentPerYear,
    required this.bathRoomCount,
    required this.bedRoomCount,
  });

  final int id;
  final String imageUrl;
  final String title;
  final double rentPerYear;
  final int bathRoomCount;
  final int bedRoomCount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => NavigationUtils.push(
        context,
        HouseDetails(id: id),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              Hero(
                tag: 'house-image-$id',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                    placeholder: (BuildContext context, url) => Center(
                      child: CircularProgressIndicator(
                        backgroundColor: CustomColors.mainBlue,
                        color: Colors.grey,
                        strokeAlign: -2,
                      ),
                    ),
                    errorWidget: (BuildContext context, url, error) =>
                        const Icon(Icons.error),
                  ),
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
      ),
    );
  }
}
