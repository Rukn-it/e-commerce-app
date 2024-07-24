import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/constants/app_colors.dart';
void main() {
  runApp(Welcome());
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          backgroundColor:  scaffoldColor,
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,

            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors:[
                      Color(0xffffffff),
                      Color(0xffffffff),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0,1.0],
                    tileMode: TileMode.clamp)
            ),
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 150,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        // 3 images
                        Text('The Fashion App That',
                        ),
                        Text('Makes You Look Your Best',
                          style:   TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: appFont,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 0,
                    right: 0,
                    top: 500,
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: const Center(
                        child: Text('Let`s Get Started',
                          style: TextStyle(
                            color: thirdColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: appFont,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),

    );
  }
}