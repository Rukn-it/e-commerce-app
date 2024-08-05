import 'package:flutter/widgets.dart' show BuildContext, Widget;

import '../../features/product_details/presenation/product_details_screen.dart';
import '../../features/wish_list/presentation/view/wish_list_screen.dart';


abstract final class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    // LoginView.routeName : (_) => const LoginView(),
    ProductDetailsScreen.routeName : (_) => const ProductDetailsScreen(),
    WishListScreen.routeName : (_) => const WishListScreen(),

  };
}
