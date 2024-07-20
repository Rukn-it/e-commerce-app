import 'package:flutter/material.dart';

import '../util/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
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


