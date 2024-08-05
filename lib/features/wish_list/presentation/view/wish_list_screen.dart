import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/view%20layer/components/categoreis_sction.dart';
import 'package:trailing_e_commerce_app/view%20layer/components/custom_appbar.dart';

import '../widgets/product_show_sction.dart';

class WishListScreen extends StatelessWidget {
   const WishListScreen({super.key});
   static const routeName = '/WishListScreen';

  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(
      appBar: customAppbar(context, "My Wishlist"),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 25),
        child: ListView(
            children: const [
            CategoriesSction(),
           
           SizedBox(height: 20),
          
          ProductShowSection()
            ],
        ),
      ),
    );
  }
}