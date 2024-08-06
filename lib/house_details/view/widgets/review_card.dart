import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../home_screen/model/house_model.dart';

class ReviewsCard extends StatelessWidget {
  const ReviewsCard({
    super.key,
    required this.house,
    required this.index,
  });

  final HouseModel house;
  final int index;

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // The name of the person who gave the review.
                Text(
                  house.reviews[index].name,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
                // Rating
                RatingBar.builder(
                  initialRating: house.reviews[index].rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 24.0,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    size: screenWidth * 0.01,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
            // Review
            Text(
              house.reviews[index].review,
              style: GoogleFonts.raleway(
                fontSize: screenWidth * 0.04,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
