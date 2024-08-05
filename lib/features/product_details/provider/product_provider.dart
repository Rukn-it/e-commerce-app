import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trailing_e_commerce_app/features/product_details/data/services.dart';
import 'package:trailing_e_commerce_app/features/product_details/data/model/product_model.dart';

import '../../../core/helper/api/dio_consumer.dart';

final productProvider =
    FutureProvider.family<ProductModel, int>((ref, value) async {
  //i made this block of code just to make sure to get real product id since they are changeable
  // later this id will come dynamicly when user select product
  var products = await getProducts();
  //
  return await getProduct(products[0].id!);
});

final productsProvider = FutureProvider<List<ProductModel>>((ref) async {
  return await getProducts();
});

final selectedColorProvider = StateProvider<List<bool>>((ref) {
  return [true, false, false, false, false, false];
});
final selectedSizeProvider = StateProvider<List<bool>>((ref) {
  return [true, false, false, false, false, false];
});
