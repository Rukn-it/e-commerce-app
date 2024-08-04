import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/text_styles.dart';
import '../widget.dart';

class CurvedContainer extends StatelessWidget {
  final int index;

  const CurvedContainer({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
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
              const SizedBox(height: 25),
              onboardingItems[index].title,
              const SizedBox(height: 20),
              Text(
                onboardingItems[index].descreption,
                style: TextStyles.xSmallRegular,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}