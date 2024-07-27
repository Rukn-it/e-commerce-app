/*
FlashProductsView: to view all products base on:
category name only if they are on sale
 */

import 'package:flutter/material.dart';

import '../../widgets.dart';

class FlashProductsView extends StatelessWidget {
  FlashProductsView({super.key});

//todo must be replaced to be base on category name , sale
  final List<Map<String, dynamic>> products = [
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'rating': 4.5,
      'price': 29.99,
    },
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'rating': 4.0,
      'price': 19.99,
    },
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'rating': 4.5,
      'price': 29.99,
    },
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'rating': 4.0,
      'price': 19.99,
    },
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 70, //todo solve this
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            imageUrl: product['imageUrl'],
            productName: product['productName'],
            rating: product['rating'],
            price: product['price'],
            onLoveButtonPressed: () {
              //todo must be replaced
            },
          );
        },
      ),
    );
  }
}
