import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent_ui/house_details/provider/house_details_provider.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

import '../../../house_details/view/house_details.dart';
import '../../../utils/asset_path.dart';
import '../../../utils/custom_page_route.dart';

class BestForYouCard extends StatefulWidget {
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
  State<BestForYouCard> createState() => _BestForYouCardState();
}

class _BestForYouCardState extends State<BestForYouCard> {
  @override
  void initState() {
    Provider.of<HouseDetailsProvider>(context, listen: false).disableShimmer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => NavigationUtils.push(
        context,
        HouseDetails(id: widget.id),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Consumer<HouseDetailsProvider>(
          builder: (context, snapShot, child) => SizedBox(
            height: 100,
            child: snapShot.showShimmer
                // Shimmer as loading.
                ? Shimmer.fromColors(
                    period: const Duration(seconds: 2),
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange,
                      ),
                    ),
                  )
                :
                // House details,
                // 1. Title
                // 2. House image
                // 3. Rent per year
                // 4. Number of available bedrooms
                // 5. Number of available bathrooms
                Row(
                    children: [
                      Hero(
                        tag: 'house-image-${widget.id}',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(
                            imageUrl: widget.imageUrl,
                            fit: BoxFit.cover,
                            height: 100,
                            width: 100,
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
                              widget.title,
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Rp. ${widget.rentPerYear} / Year",
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
                                      "${widget.bedRoomCount} Bedroom",
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
                                      "${widget.bathRoomCount} Bathroom",
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
      ),
    );
  }
}
