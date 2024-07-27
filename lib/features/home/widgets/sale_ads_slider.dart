/*
SaleAdsSlider: slider to show the ads and sale
widget that has button to click on
 */

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SaleAdsSlider extends StatelessWidget {
  const SaleAdsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    //todo should be replaced

    final List<String> imgList = [
      'https://via.placeholder.com/500x200?text=Image+1',
      'https://via.placeholder.com/500x200?text=Image+2',
      'https://via.placeholder.com/500x200?text=Image+3',
    ];
    return CarouselSlider.builder(
      itemCount: imgList.length,
      itemBuilder: (context, index, realIndex) {
        final imgUrl = imgList[index];
        //todo: replace it with card that has button
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        initialPage: 0,
      ),
    );
  }
}

/*
 Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return Container(
              width: 12,
              height: 12,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == entry.key
                    ? Colors.blue
                    : Colors.grey,
              ),
            );
 */
