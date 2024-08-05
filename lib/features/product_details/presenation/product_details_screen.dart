import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';
import 'package:trailing_e_commerce_app/core/constants/text_styles.dart';
import 'package:trailing_e_commerce_app/core/core.dart';
import 'package:trailing_e_commerce_app/features/product_details/presenation/widgets/product_image_widget.dart';
import 'package:trailing_e_commerce_app/features/product_details/presenation/widgets/select_color_widget.dart';
import 'package:trailing_e_commerce_app/features/product_details/presenation/widgets/select_size_widget.dart';

import '../../../core/helper/api/dio_consumer.dart';
import '../provider/product_provider.dart';
import 'widgets/bottom_widget.dart';
import 'widgets/category_widget.dart';

class ProductDetailsScreen extends ConsumerWidget {
  ProductDetailsScreen({super.key});
  static const routeName = '/ProductDetailsScreen';

  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.brown,
    Colors.purple,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productAsyncValue = ref.watch(productProvider(119));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 80,
          title: Text(
            'Product Details',
            style: TextStyles.xLargeRegular.copyWith(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(Icons.favorite_border_rounded),
              ),
            ),
          ],
          leading: IconButton(
            onPressed: () async {},
            icon: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: productAsyncValue.when(
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error,$stack')),
          data: (data) {
            // Show widget based on the data
            return Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ProductImageWidget(image: data.images![0]),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CategoryWidget(
                              CategoryName: data.category!.name!,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              data.title!,
                              style: TextStyles.heading3Bold,
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Product Details',
                              style: TextStyles.xLargeBold,
                            ),
                            const SizedBox(height: 20),
                            Text(data.description!),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                width: double.infinity,
                                height: 2,
                                color: Colors.grey.withOpacity(0.1),
                              ),
                            ),
                            SelectSizeWidget(),
                            const SizedBox(height: 20),
                            SelectColorWidget(),
                            const SizedBox(height: 100),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                BottomWidget(
                  price: data.price,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
