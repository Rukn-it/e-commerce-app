
import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/view%20layer/screens/errors%20screen/not_found_screen.dart';
import 'package:trailing_e_commerce_app/view%20layer/screens/home_page.dart';
import 'package:trailing_e_commerce_app/view%20layer/screens/splash_screen.dart';

class RouteManager{
 static Route<dynamic>? generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':{
        return MaterialPageRoute(builder: (ctx){
      return
       const SplashScreen();
          });
    }
     case '/home_screen':{
      return MaterialPageRoute(builder: (ctx){
        return  const HomeScreen();
      });
    }
   
  
      default:{
        return MaterialPageRoute(builder: (ctx){
          return  const NotFoundScreen();
        });}
    }
  }
}