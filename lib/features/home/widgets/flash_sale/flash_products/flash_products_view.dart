import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/providers.dart';
import '../../widgets.dart';



class FlashProductsView extends ConsumerWidget {
  const FlashProductsView({super.key});

  @override

  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProducts = ref.watch(productsProvider);

    return asyncProducts.when(
      loading: () => const SliverToBoxAdapter(
          child: Center(child: ThreeDotsProgressIndicator())),
      error: (err, stack) => SliverToBoxAdapter(child: errorMsg()),
      data: (products) {
        return SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final product = products[index];
              return ProductCard(
                imageUrl: product.images[0],
                productName: product.title,
                price: product.price,
              );

            },
            childCount: products.length,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7),
        );
      },
    );
  }
}
