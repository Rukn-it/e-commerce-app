/*
functions to get the data using the DioConsumer
provide the api url to get the data then convert it to lost of models
 */


import 'package:trailing_e_commerce_app/core/core.dart';
import 'package:trailing_e_commerce_app/features/home/providers/temp_models/temp_models.dart' as model;

Future<List<model.Product>> getProducts() async {
    DioConsumer dio = DioConsumer();
    try {
      final response = await dio.get(EndPoint.products);
      final List<dynamic> responseData = response;
      return responseData.map((item) => model.Product.fromJson(item)).toList();

    }on ServerException catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }
Future<List<model.Category>> getCategories() async {
  DioConsumer dio = DioConsumer();
  try {
    final response = await dio.get(EndPoint.category);
    final List<dynamic> responseData = response;
    return responseData.map((item) => model.Category.fromJson(item)).toList();

  }on ServerException catch (e) {
    throw Exception('Failed to load products: $e');
  }
}