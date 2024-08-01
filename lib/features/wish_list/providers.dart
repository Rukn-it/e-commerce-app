import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trailing_e_commerce_app/features/wish_list/models/product.dart';

import 'services/servises.dart';

final productsProvider = FutureProvider<List<Product>>((ref) async {
  return getProducts();
});
