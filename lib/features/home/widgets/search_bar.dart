/*
HomeSearchBar: to find items based on filter
 */
import
'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SearchBar(

              shadowColor: MaterialStatePropertyAll(Colors.transparent),
          side: MaterialStatePropertyAll(const BorderSide(color: Colors.grey)),
          leading: const Icon(
            Icons.search,
            color: primaryColor,
          ),
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          hintText: "Search",
          hintStyle: MaterialStatePropertyAll(const TextStyle(fontSize: 15)),
        )),
        const SizedBox(width: 10),
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.filter_list), //todo change the icon
            color: Colors.white, // Icon color
            onPressed: () {
              // Handle filter icon press
            },
          ),
        ),
      ],
    );
  }
}
