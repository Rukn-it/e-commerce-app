import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/text_styles.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key, required this.price});
  final int? price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: const Offset(0, 0),
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
          )
        ],
        color: Colors.white,
        borderRadius: const BorderRadiusDirectional.only(
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
                style: TextStyles.mediumRegular.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 5),
              Text(
                '${price!}\$',
                style: TextStyles.mediumBold.copyWith(color: Colors.black),
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
                const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  'Add to Cart',
                  style: TextStyles.mediumRegular.copyWith(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
