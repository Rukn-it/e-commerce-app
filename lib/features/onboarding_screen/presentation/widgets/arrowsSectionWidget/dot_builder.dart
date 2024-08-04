import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';

class DotBuilder extends StatelessWidget {
  final int currentIndex;
  final int index;
  static const kAnim = Duration(milliseconds: 200);

  const DotBuilder({required this.currentIndex, required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kAnim,
      margin: const EdgeInsets.only(right: 5),
      height: currentIndex == index ? 12 : 8,
      width: currentIndex == index ? 12 : 8,
      decoration: BoxDecoration(
        color: currentIndex == index ? primaryColor : scaffoldColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}