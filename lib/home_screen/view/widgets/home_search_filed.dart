import 'package:flutter/material.dart';
import '../../../utils/asset_path.dart';
import '../../../utils/widgets/custom_text_form_field.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.065,
      width: screenWidth,
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              labelText: "Search address, or near you",
              validator: (p0) {
                return null;
              },
              textEditingController: TextEditingController(),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: screenHeight * 0.065,
            height: screenHeight * 0.065,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
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
              AssetPath.settingsWithLinesIconPath,
              height: 0.0,
              width: 0.0,
            ),
          )
        ],
      ),
    );
  }
}
