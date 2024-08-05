/*this  page view class */
import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/features/onboarding_screen/presentation/widgets/widget.dart';


class OnboardingPageView extends StatelessWidget {
  final int currentIndex;
  final PageController controller;
  final ValueChanged<int> onPageChanged;

  const OnboardingPageView({
    Key? key,
    required this.currentIndex,
    required this.controller,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller,
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) => Column(
          children: [
            /* calls Images according in index: find detailes in pageViewEidget */
            ImageContainer(imagePath: onboardingItems[index].image),
            /* shows bottom container : find detailes in pageViewEidget */
            CurvedContainer(index: index),
          ],
        ),
      ),
    );
  }
}