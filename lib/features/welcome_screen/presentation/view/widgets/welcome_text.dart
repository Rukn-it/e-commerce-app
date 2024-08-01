import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/font_weights.dart';
import '../../../../../core/constants/text_styles.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'The ',
                style: TextStyles.heading3Bold,
              ),
              TextSpan(
                text: 'Fashion App',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeights.bold,
                  fontFamily: appFont,
                ),
              ),
              TextSpan(
                text: ' That',
                style: TextStyles.heading3Bold,
              ),
            ],
          ),
        ),
        Text(
          'Makes You Look Your Best',
          style: TextStyles.heading3Bold,
        ),
      ],
    );
  }
}