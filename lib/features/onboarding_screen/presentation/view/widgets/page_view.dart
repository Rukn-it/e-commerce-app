import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/text_styles.dart';

import '../../../data/onboarding_model.dart';

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
            Container( // ******* 3 imagesContainer
              width: 200 ,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage( onboardingItems[index].image,),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
            ),
            Expanded(
              child: Container( // ***** Curved Container
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
                      SizedBox(height: 25),
                      onboardingItems[index].title,
                      SizedBox(height: 20),
                      Text( onboardingItems[index].descreption,
                        style: TextStyles.xSmallRegular,
                        textAlign: TextAlign.center,
                      ),
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