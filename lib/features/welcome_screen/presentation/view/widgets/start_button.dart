import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/text_styles.dart';


class StartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40,
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: const Center(
          child: Text(
            'Let`s Get Started',
            style: TextStyles.mediumMedium,
          ),
        ),
      ),
    );
  }
}