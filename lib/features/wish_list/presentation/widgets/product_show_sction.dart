
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:trailing_e_commerce_app/core/core.dart';
import 'package:trailing_e_commerce_app/features/wish_list/presentation/widgets/product_tile.dart';

import '../../providers.dart';


// ignore: must_be_immutable
class ProductShowSection extends ConsumerWidget {
const  ProductShowSection({
    super.key,
   
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProducts = ref.watch(productsProvider);
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeidth = MediaQuery.of(context).size.width;
    return asyncProducts.when(
      data: (products){
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
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
      
          return 
          ProductTile(screenHeight: screenHeight, screenWeidth: screenWeidth,product:products[index]);
          
        },
      ),
    );
      },
      //بعدين عدلي حق الخطأ
      error: (error, stack)=>Text(error.toString()),
      loading: ()=>const Center(
        child: CircularProgressIndicator(),
      )
      );
  }
}
