import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/features/wish_list/presentation/view/wish_list_screen.dart';

import '../../../../core/core.dart';
import '../../../home/presentation/home_page.dart';
import '../../../product_details/presenation/product_details_screen.dart';
import '../../../welcome_screen/presentation/view/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    _checkAuth(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:const BoxDecoration(
          color: primaryColor,
          image: DecorationImage(
            image: AssetImage('assets/images/Splash (14) 1.png'), 
            fit: BoxFit.cover,
          ),
        ),
      
      ),
    );
  }
}

_checkAuth(BuildContext context)async{
  await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      // if(SharedPrefsHelper.getString('token')==null) {
      //   return LoginPage();
      // } else {
        return  HomePage();
      // }
    }));
}


