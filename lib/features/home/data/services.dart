import 'package:trailing_e_commerce_app/features/home/providers/temp_models/temp_models.dart';
import '../../../core/helper/api/dio_consumer.dart';
/*
functions to get the data using the DioConsumer
provide the api url to get the data then convert it to lost of models
 */


  Future<List<Product>> getProducts() async {
    DioConsumer dio = DioConsumer();
    try {
      final response = await dio.get('https://api.escuelajs.co/api/v1/products');
      final List<dynamic> responseData = response;
      // List<Map<String, dynamic>> products = List<Map<String, dynamic>>.from(response);
      return responseData.map((item) => Product.fromJson(item)).toList();

    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }
Future<List<Category>> getCategories() async {
  DioConsumer dio = DioConsumer();
  try {
    final response = await dio.get('https://api.escuelajs.co/api/v1/categories');
    final List<dynamic> responseData = response;
    return responseData.map((item) => Category.fromJson(item)).toList();

  } catch (e) {
    throw Exception('Failed to load products: $e');
  }
}