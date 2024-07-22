import 'package:flutter/material.dart' show Color, Colors, MaterialColor;

abstract final class AppColors {
  static const Color red = Color(0xffFF0C0C);
  static final Color grey = Colors.grey[300]!;
}

const MaterialColor primaryColor = MaterialColor(
  0xff25849D,
  <int, Color>{
    300: Color(0xff01B1AE),
    400: Color(0xff3F97AF),
    500: Color(0xff25849D),
  },
);
