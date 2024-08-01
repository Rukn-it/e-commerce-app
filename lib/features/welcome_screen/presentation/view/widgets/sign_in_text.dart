import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/text_styles.dart';


class SignInText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: TextStyles.smallMedium,
          ),
          TextSpan(
            text: 'Sign In',
            style: TextStyle(
              color: primaryColor,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}