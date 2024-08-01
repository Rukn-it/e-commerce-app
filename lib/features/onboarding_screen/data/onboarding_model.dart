import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/font_weights.dart';
import '../../../core/constants/text_styles.dart';
class OnBoarding {
  final RichText title;
  final String image;
  final String descreption;

  OnBoarding({
    required this.title,
    required this.image,
    required this.descreption,
  });
}
List<OnBoarding> onboardingItems = [
  OnBoarding(
    title: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Seamless ',
            style: TextStyle(
              color: primaryColor,
              fontSize: 20,
              fontWeight: FontWeights.bold,
              fontFamily: appFont,

            ),
          ),
          TextSpan(
            text: ' Shopping\nExperience',
            style: TextStyles.heading3Bold,
          ),
        ],
      ),
    ),
    image: 'assets/images/onboarding/1.png',
    descreption: 'Lorem ipsum dolor eit amit, consectetur \n'
        ' adipiscing elit, set do eiusmod tempor incididunt',
  ),

  OnBoarding(
    title: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Wishlist: Where ',
            style: TextStyles.heading3Bold,
          ),
          TextSpan(
            text: 'Fashion\n Dreams',
            style: TextStyle(
              color: primaryColor,
              fontSize: 20,
              fontWeight: FontWeights.bold,
              fontFamily: appFont,
            ),
          ),
          TextSpan(
            text: 'Begin',
            style: TextStyles.heading3Bold,
          ),
        ],
      ),
    ),
    image: 'assets/images/onboarding/2.png',
    descreption: 'Lorem ipsum dolor eit amit, consectetur \n'
        ' adipiscing elit, set do eiusmod tempor incididunt',
  ),

  OnBoarding(
    title: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Swift ',
            style: TextStyle(
              color: primaryColor,
              fontSize: 20,
              fontWeight: FontWeights.bold,
              fontFamily: appFont,
            ),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyles.heading3Bold,
          ),
          TextSpan(
            text: 'Reliable ',
            style: TextStyle(
              color: primaryColor,
              fontSize: 20,
              fontWeight: FontWeights.bold,
              fontFamily: appFont,
            ),
          ),
          TextSpan(
            text: ' \n Delivery',
            style: TextStyles.heading3Bold,
          ),
        ],
      ),
    ),
    image: 'assets/images/onboarding/3.jpg',
    descreption: 'Lorem ipsum dolor eit amit, consectetur \n'
        ' adipiscing elit, set do eiusmod tempor incididunt',
  ), ];
