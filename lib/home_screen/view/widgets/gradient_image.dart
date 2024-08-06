import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/custom_colors.dart';

class GradientImage extends StatelessWidget {
  final String imageUrl;

  const GradientImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            height: 290,
            width: 230,
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
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black87,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
