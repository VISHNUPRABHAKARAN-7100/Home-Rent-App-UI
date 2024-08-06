import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../home_screen/model/house_model.dart';
import '../../provider/house_details_provider.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
    required this.house,
  });

  final HouseModel house;

  @override
  Widget build(BuildContext context) {
    return Consumer<HouseDetailsProvider>(
      builder: (context, provider, child) {
        // If the description content length is greater
        // then 100, then it will be shown with ... and
        // see more button will be shown.
        final isExpanded = provider.isExpanded;
        final truncatedDescription = house.description.length > 100
            ? '${house.description.substring(0, 100)}...'
            : house.description;
        return RichText(
          text: TextSpan(
            style: GoogleFonts.raleway(
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: isExpanded ? house.description : truncatedDescription,
                style: GoogleFonts.raleway(),
              ),
              if (house.description.length > 100)
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => provider.toggleExpansion(),
                  text: isExpanded ? ' See Less' : ' See More',
                  style: const TextStyle(color: Colors.blue),
                ),
            ],
          ),
        );
      },
    );
  }
}
