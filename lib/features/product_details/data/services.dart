import 'package:trailing_e_commerce_app/core/core.dart';
import 'package:trailing_e_commerce_app/features/product_details/data/model/product_model.dart';

Future<ProductModel> getProduct(int productId) async {
  var dioConsumer = DioConsumer();
  try {
    var res = await dioConsumer.get('${EndPoint.products}/$productId');
    print(res);
    var product = ProductModel.fromJson(res);
    return product;
  } catch (e) {
    throw Exception('Error while load product');
  }
}

Future<List<ProductModel>> getProducts() async {
  var dioConsumer = DioConsumer();
  try {
    var res = await dioConsumer.get(EndPoint.products);
    final List<dynamic> resData = res;
    return resData.map((item) => ProductModel.fromJson(item)).toList();
  } catch (e) {
    throw Exception('Error while loading products');
  }
}
