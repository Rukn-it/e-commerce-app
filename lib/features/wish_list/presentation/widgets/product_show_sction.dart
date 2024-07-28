
import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/features/wish_list/presentation/widgets/product_tile.dart';


// ignore: must_be_immutable
class ProductShowSection extends StatelessWidget {
const  ProductShowSection({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight,
      child: GridView.builder(
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 
               (itemWidth / itemHeight * 1.2),

          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
      
          return 
          ProductTile(screenHeight: screenHeight, screenWeidth: screenWeidth);
          
        },
      ),
    );
  }
}
