import 'package:flutter/material.dart';

import '../../../../../core/constants/text_styles.dart';


class DescriptionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Lorem ipsum dolor eit amit, consectetur\n'
              'adipiscing elit, set do eiusmod tempor incididunt',
          style: TextStyles.xSmallRegular,
        ),
      ],
    );
  }
}