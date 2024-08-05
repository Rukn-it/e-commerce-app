import 'package:flutter/material.dart';

import '../../../../core/constants/text_styles.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.CategoryName});
  final String CategoryName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          CategoryName,
          // 'Female\'s Style',
          style: TextStyles.largeRegular.copyWith(color: Colors.grey),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            const SizedBox(width: 5),
            Text(
              '4.5',
              style: TextStyles.smallRegular.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
