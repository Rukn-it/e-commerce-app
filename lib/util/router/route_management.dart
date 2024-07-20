
import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/view%20layer/screens/home_page.dart';
import 'package:trailing_e_commerce_app/view%20layer/screens/splash_screen.dart';

import 'const_routers.dart';

class RouteManager{
 static Route<dynamic>? generateRoute(RouteSettings settings){
    switch(settings.name){
      case initRoute:
        {
          return _route(const SplashScreen());
        }
      case homeRoute:
        {
          return _route(const HomeScreen());
        }
      
      // case allProductsRoute:
      //   {
      //     var id = settings.arguments ;
      //     if(id!=null) {
      //       return _route( ProductsViewPage(category:id.toString()));
      //     }
      //     return _route( ProductsViewPage());


      //   }
      default:
        {
          final arg = settings.name as String;
          return _route(UndefineRoute(routeName: arg));
        }
    }
  }
   // Helper method to create a MaterialPageRoute
  static MaterialPageRoute _route(Widget child) {
    return MaterialPageRoute(builder: (_) => child);
  }
}


class UndefineRoute extends StatelessWidget {
  const UndefineRoute({super.key, required this.routeName});

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This $routeName is Undefine Route',
        ),
      ),
    );
  }
}
