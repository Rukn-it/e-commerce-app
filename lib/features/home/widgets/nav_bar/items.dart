import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';

class NavigationItem extends StatelessWidget {
  final IconData filledIcon;
  final IconData outlinedIcon;
  final bool isSelected;
  final VoidCallback onPressed;

  const NavigationItem({super.key,
    required this.filledIcon,
    required this.outlinedIcon,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(

      icon: CircleAvatar(
        backgroundColor: isSelected ? Colors.white : Colors.transparent,
        child: Icon(
          isSelected ? filledIcon : outlinedIcon,
          color: isSelected ? primaryColor : Colors.white,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
