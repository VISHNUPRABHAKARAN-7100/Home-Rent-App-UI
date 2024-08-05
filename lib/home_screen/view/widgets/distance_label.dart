import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/asset_path.dart';

class DistanceLabel extends StatelessWidget {
  final String distance;

  const DistanceLabel({
    super.key,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      top: 20,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff739dba),
          borderRadius: BorderRadius.circular(15),
        ),
        width: 85,
        height: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetPath.locationWhiteIconPath,
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 5),
            Text(
              distance,
              style: GoogleFonts.raleway(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
