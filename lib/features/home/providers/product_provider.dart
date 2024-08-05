import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trailing_e_commerce_app/features/home/data/services.dart';
import 'package:trailing_e_commerce_app/features/home/providers/temp_models/temp_models.dart';

final productsProvider = FutureProvider<List<Product>>((ref) async {
  return getProducts();
});


final categoriesProvider = FutureProvider<List<Category>>((ref) async {
  return getCategories();
});