import 'package:flutter/material.dart';

import '../../widgets.dart';

class FlashSaleHeader extends StatelessWidget {
  const FlashSaleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(
          'Flash Sale ',
        ),
        TimerComponents()
      ],
    );
  }
}
