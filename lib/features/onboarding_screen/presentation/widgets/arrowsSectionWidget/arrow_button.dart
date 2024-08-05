import 'package:flutter/material.dart';
import '../../../../../../core/constants/app_colors.dart';

class ArrowButton extends StatelessWidget {
  final bool isVisible;
  final IconData icon;
  final VoidCallback onTap;

  const ArrowButton({
    Key? key,
    required this.isVisible,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isVisible
        ? GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: icon == Icons.arrow_back ? Colors.white : primaryColor,
          borderRadius: BorderRadius.circular(25),
          border: icon == Icons.arrow_back
              ? Border.all(color: primaryColor, width: 2)
              : null,
        ),
        child: Icon(icon, color: icon == Icons.arrow_back ? primaryColor : Colors.white),
      ),
    )
        : const SizedBox(width: 50);
  }
}