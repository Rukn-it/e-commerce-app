/*
This widget consist of :  User Location and Notification Icon Button
 */

import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Icon(Icons.location_on,color: primaryColor,),
            SizedBox(width: 8),
            //todo: change it to get user location
            Text('New York, USA'),
          ],
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              //todo:Navigate to all notifications view page
            },
          ),
        ),
      ],
    );
  }
}

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Location",
    );
  }
}
