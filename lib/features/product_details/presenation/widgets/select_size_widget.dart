import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../provider/product_provider.dart';

class SelectSizeWidget extends ConsumerWidget {
  SelectSizeWidget({super.key});
  List<String> sizes = [
    'S',
    'M',
    'L',
    'XL',
    'XXL',
    'XXXL',
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSize = ref.watch(selectedSizeProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
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
                  ref.read(selectedSizeProvider.notifier).state =
                      List.filled(6, false);
                  ref.read(selectedSizeProvider.notifier).state[index] = true;
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
                    color: selectedSize[index] ? primaryColor : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    sizes[index],
                    style: TextStyles.mediumBold.copyWith(
                        color:
                            selectedSize[index] ? Colors.white : Colors.black),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
