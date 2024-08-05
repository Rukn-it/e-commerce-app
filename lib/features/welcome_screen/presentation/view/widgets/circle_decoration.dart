import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';


class CircleDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 220,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(
          color: Colors.black12,
          width: 1.0,
        ),
      ),
    );
  }
}