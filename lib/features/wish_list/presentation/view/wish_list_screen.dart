import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/view%20layer/components/categoreis_sction.dart';
import 'package:trailing_e_commerce_app/view%20layer/components/custom_appbar.dart';

class WishListScreen extends StatelessWidget {
   const WishListScreen({super.key});
  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(
      appBar: customAppbar(context, "My Wishlist"),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 25),
        child: ListView(
            children:const [
            CategoriesSction(),
           
            SizedBox(height: 20),
          
          
            ],
        ),
      ),
    );
  }
}