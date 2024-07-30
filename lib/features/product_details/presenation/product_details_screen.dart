import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';
import 'package:trailing_e_commerce_app/core/constants/text_styles.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
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

  List<bool> selectedColor = [
    true,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Image.network(
                    'https://via.placeholder.com/640x480.png/004400',
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Female\'s Style',
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
                            'Light Brown Jacket',
                            style: TextStyles.heading3Bold,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Product Details',
                            style: TextStyles.xLargeBold,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Random text random text random text random text random text random text random text random text random text random text random text random text ',
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              6,
                              (index) {
                                return GestureDetector(
                                  onTap: () {
                                    selectedSize = [
                                      false,
                                      false,
                                      false,
                                      false,
                                      false,
                                      false,
                                    ];
                                    selectedSize[index] = true;
                                    print(index);
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsetsDirectional.symmetric(
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
                                      borderRadius: BorderRadius.circular(10),
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
                                  selectedColor = [
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                  ];
                                  selectedColor[index] = true;
                                  print(index);
                                  setState(() {});
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsetsDirectional.only(end: 8),
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
                        '83.97\$',
                        style:
                            TextStyles.mediumBold.copyWith(color: Colors.black),
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
        ),
      ),
    );
  }
}
