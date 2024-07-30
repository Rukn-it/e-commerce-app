import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/features/home/widgets/flash_sale/header/timer_components.dart';

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
