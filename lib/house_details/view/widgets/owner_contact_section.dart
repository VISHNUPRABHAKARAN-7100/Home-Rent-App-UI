import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../home_screen/model/house_model.dart';
import '../../../utils/asset_path.dart';

class OwnerContactSection extends StatelessWidget {
  const OwnerContactSection({
    super.key,
    required this.house,
    required this.onCallPressed,
    required this.onMessagePressed,
  });

  final HouseModel house;
  final VoidCallback onCallPressed;
  final VoidCallback onMessagePressed;

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      // Owner's image.
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(house.ownerProfileImage),
        backgroundColor: Colors.transparent,
      ),
      // Owner's name.
      title: Text(
        house.ownerName,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.raleway(
          fontWeight: FontWeight.w500,
          fontSize: screenWidth * 0.05,
        ),
      ),
      subtitle: Text(
        "Owner",
        style: GoogleFonts.raleway(
          fontSize: 18,
          color: const Color(0xff858585),
        ),
      ),
      trailing: SizedBox(
        width: (screenHeight * 0.12) + 20,
        child: Row(
          children: [
            // Owner's contact number.
            GestureDetector(
              onTap: onCallPressed,
              child: Container(
                width: screenHeight * 0.05,
                height: screenHeight * 0.05,
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
                child: Image.asset(
                  AssetPath.callIconPath,
                ),
              ),
            ),
            const SizedBox(width: 20),
            // Message functionality with owner.
            GestureDetector(
              onTap: onMessagePressed,
              child: Container(
                width: screenHeight * 0.05,
                height: screenHeight * 0.05,
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
                child: Image.asset(
                  AssetPath.speechIconPath,
                  height: 0.0,
                  width: 0.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
