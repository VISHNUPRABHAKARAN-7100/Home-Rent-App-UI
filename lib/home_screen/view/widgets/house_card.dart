import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent_ui/house_details/view/house_details.dart';
import 'package:home_rent_ui/utils/custom_page_route.dart';
import 'package:shimmer/shimmer.dart';

import '../../../utils/asset_path.dart';

class HouseCard extends StatelessWidget {
  final int id;
  final String imageUrl;
  final double distance;
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
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Hero(
                tag: 'house-image-$id',
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  height: 290,
                  width: 230,
                  placeholder: (BuildContext context, url) =>
                      // Shimmer as loading indicator.
                      Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      height: 290,
                      width: 230,
                      color: Colors.white,
                    ),
                  ),
                  errorWidget: (BuildContext context, url, error) =>
                      const Icon(Icons.error),
                  imageBuilder: (context, imageProvider) => Stack(
                    children: [
                      // House image.
                      Container(
                        height: 290,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Gradient for the House image.
                      Container(
                        height: 290,
                        width: 230,
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
                      // Location icon
                      Positioned(
                        right: 20,
                        top: 20,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xffbebebe),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 85,
                          height: 35,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AssetPath.locationIconPath,
                                height: 15,
                                width: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "$distance km",
                                style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // House details,
                      // 1. Title
                      // 2. Address
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
