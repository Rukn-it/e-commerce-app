import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/text_styles.dart';
import 'package:trailing_e_commerce_app/features/onboarding_screen/data/onboarding_model.dart';
import 'arrows_section.dart';

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
    return  Expanded(
      child: PageView.builder(
        controller: controller,
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) => Column(
          children: [

            Padding(
              padding: const EdgeInsets.only( left: 40, right: 40),
              child: Image.asset(
                onboardingItems[index].image,
                height: 350,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      onboardingItems[index].title,
                      SizedBox(height: 5),
                      Text(
                        onboardingItems[index].descreption,
                        style: TextStyles.xSmallRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 25),
                      ArrowSection( controller: controller,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}