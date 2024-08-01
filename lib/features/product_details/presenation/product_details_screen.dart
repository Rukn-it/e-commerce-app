import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';
import 'package:trailing_e_commerce_app/core/constants/text_styles.dart';
import 'package:trailing_e_commerce_app/core/core.dart';

import '../../../core/helper/api/dio_consumer.dart';

final dioConsumerProvider = Provider<DioConsumer>((ref) {
  return DioConsumer();
});
final dataProvider =
    FutureProvider.autoDispose.family<dynamic, String>((ref, path) async {
  final dioConsumer = ref.watch(dioConsumerProvider);
  return await dioConsumer.get(path);
});

class ProductDetailsScreen extends ConsumerWidget {
  ProductDetailsScreen({super.key});
  static const routeName = '/ProductDetailsScreen';

  List<String> sizes = [
    'S',
    'M',
    'L',
    'XL',
    'XXL',
    'XXXL',
  ];
  List<bool> selectedSize = [
    true,
    false,
    false,
    false,
    false,
    false,
  ];

  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.brown,
    Colors.purple,
    Colors.grey,
  ];

  // List<bool> selectedColor = [
  //   true,
  //   false,
  //   false,
  //   false,
  //   false,
  //   false,
  // ];
  final selectedColorProvider = StateProvider<List<bool>>((ref) {
    return [true, false, false, false, false, false];
  });
  final selectedSizeProvider = StateProvider<List<bool>>((ref) {
    return [true, false, false, false, false, false];
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final dioConsumer = ref.watch(dioConsumerProvider);
    final dataAsyncValue = ref.watch(dataProvider(EndPoint.products + '/23'));
    final selectedColor = ref.watch(selectedColorProvider);
    final selectedSize = ref.watch(selectedSizeProvider);
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
            onPressed: () async {
              // print(
              //     (await dioConsumer.get(EndPoint.products + '/23'))['title']);
            },
            icon: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: dataAsyncValue.when(
          data: (data) {
            // Show widget based on the data
            return Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      // switch (dataAsyncValue) {
                      //   AsyncData(:final value) =>
                      //     Text('data: ${value['title'].toString()}'),
                      //   AsyncError(:final error) => Text('error: $error'),
                      //   _ => const Text('loading'),
                      // },
                      Image.network(
                        data['images'][0],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Placeholder(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    data['category']['name'],
                                    // 'Female\'s Style',
                                    style: TextStyles.largeRegular
                                        .copyWith(color: Colors.grey),
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
                              ),
                              const SizedBox(height: 20),
                              Text(
                                data['title'],
                                // 'Light Brown Jacket',
                                style: TextStyles.heading3Bold,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'Product Details',
                                // 'Product Details',
                                style: TextStyles.xLargeBold,
                              ),
                              const SizedBox(height: 20),
                              Text(data['description']
                                  // 'Random text random text random text random text random text random text random text random text random text random text random text random text ',
                                  ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: Colors.grey.withOpacity(0.1),
                                ),
                              ),
                              Text(
                                'Select Size',
                                style: TextStyles.xLargeBold,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  6,
                                  (index) {
                                    return GestureDetector(
                                      onTap: () {
                                        // selectedSize = [
                                        //   false,
                                        //   false,
                                        //   false,
                                        //   false,
                                        //   false,
                                        //   false,
                                        // ];
                                        // selectedSize[index] = true;
                                        // print(index);
                                        // setState(() {});
                                        ref
                                            .read(selectedSizeProvider.notifier)
                                            .state = List.filled(6, false);
                                        ref
                                            .read(selectedSizeProvider.notifier)
                                            .state[index] = true;
                                      },
                                      child: Container(
                                        padding:
                                            EdgeInsetsDirectional.symmetric(
                                                vertical: 10, horizontal: 15),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: selectedSize[index]
                                                ? Colors.transparent
                                                : Colors.grey,
                                          ),
                                          color: selectedSize[index]
                                              ? primaryColor
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          sizes[index],
                                          style: TextStyles.mediumBold.copyWith(
                                              color: selectedSize[index]
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'Select Color:',
                                style: TextStyles.xLargeBold,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: List.generate(
                                  colors.length,
                                  (index) => GestureDetector(
                                    onTap: () {
                                      // selectedColor = [
                                      //   false,
                                      //   false,
                                      //   false,
                                      //   false,
                                      //   false,
                                      //   false,
                                      // ];
                                      // selectedColor[index] = true;
                                      // print(index);
                                      // setState(() {});
                                      ref
                                          .read(selectedColorProvider.notifier)
                                          .state = List.filled(6, false);
                                      ref
                                          .read(selectedColorProvider.notifier)
                                          .state[index] = true;
                                      // ref.read(selectedColorProvider.notifier).state = List.from(selectedColor)..[index] = !selectedColor[index];
                                      print(index);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          end: 8),
                                      child: CircleAvatar(
                                        radius: 18,
                                        backgroundColor: colors[index],
                                        child: selectedColor[index]
                                            ? const CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 8,
                                              )
                                            : null,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 100),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        offset: Offset(0, 0),
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(20),
                      topStart: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyles.mediumRegular
                                .copyWith(color: Colors.grey),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${data['price']}\$',
                            style: TextStyles.mediumBold
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                      MaterialButton(
                        color: primaryColor,
                        minWidth: 200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        height: 50,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Add to Cart',
                              style: TextStyles.mediumRegular
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error')),
        ),
      ),
    );
  }
}
