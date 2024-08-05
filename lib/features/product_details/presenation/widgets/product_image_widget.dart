import 'package:flutter/material.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => const Placeholder(),
    );
  }
}
