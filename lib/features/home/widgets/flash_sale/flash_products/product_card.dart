import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final double price;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 8,
                    right: 8,
                    child: IconButton(
                      icon: const Icon(Icons.favorite_border,
                          color: Colors.white),
                      onPressed: () {
                        // Handle button press logic here
                      },
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Text(
                productName,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Flexible(
             flex: 1,
              child: Text(
                '\$${price.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 10, color: Colors.green),
              ),

            ),
          ],

      ),
    );
  }
}
