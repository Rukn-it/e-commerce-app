import 'package:trailing_e_commerce_app/features/wish_list/models/product.dart';

import '../../../core/helper/api/dio_consumer.dart';

// import '../../../core/core.dart';

Future<List<Product>> getProducts() async {
    DioConsumer dioConsumer = DioConsumer();
    try {
      
      final response = await dioConsumer.get("https://api.escuelajs.co/api/v1/products");
      final List<dynamic> responseData = response;
      return responseData.map((item) => Product.fromJson(item)).toList();

    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }