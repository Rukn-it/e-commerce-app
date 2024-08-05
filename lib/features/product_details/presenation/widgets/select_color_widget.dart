import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/text_styles.dart';
import '../../provider/product_provider.dart';

class SelectColorWidget extends ConsumerWidget {
  SelectColorWidget({super.key});
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
    final selectedColor = ref.watch(selectedColorProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
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
                ref.read(selectedColorProvider.notifier).state =
                    List.filled(6, false);
                ref.read(selectedColorProvider.notifier).state[index] = true;
                // ref.read(selectedColorProvider.notifier).state = List.from(selectedColor)..[index] = !selectedColor[index];
                print(index);
              },
              child: Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
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
      ],
    );
  }
}
