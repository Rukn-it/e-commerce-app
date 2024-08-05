import 'package:flutter/material.dart';

class ImageGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 150,
              height: 340,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/welcome/2.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(75),
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Container(
              width: 150,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/welcome/1.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(75),
              ),
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/welcome/3.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(75),
              ),
            ),
          ],
        ),
      ],
    );
  }
}