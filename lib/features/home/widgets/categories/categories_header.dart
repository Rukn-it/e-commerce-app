/*
CategoryHeader: Title to show user the categorise after it , and a
button to see all categorise in different page
 */

import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';

class CategoryHeader extends StatelessWidget {


  const CategoryHeader({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Category",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          TextButton(
            onPressed: (){
              //todo navigate to categories page
            },
            child: const Text(
              'See All',
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
