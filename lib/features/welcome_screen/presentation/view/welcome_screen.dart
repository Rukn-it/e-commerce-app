import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/font_weights.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/constants/app_colors.dart';

void main() {
  runApp(Welcome());
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors:[
                      backgroundColor,
                      backgroundColor,
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
                    left: -60,
                    top: -30,
                    child:Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: backgroundColor,
                        border: Border.all(
                          color: Colors.black12,
                          width: 1.0,
                        ),
                      ),
                    )
                ),
                  Positioned(
                    bottom:300 ,
                      right: -100,
                      top: 200,
                      child:Container(
                        width: 220,
                        height: 220,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: backgroundColor,
                          border: Border.all(
                            color: Colors.black12,
                            width: 1.0,
                          ),
                        ),
                      )
                  ),
                Positioned(
                  top: 50,
                  bottom: 250,
                  left: 25,
                  right: 25,
                  child:  Container(
                    child: Row(
                      children: [
                            Column(
                              children: [
                                Container(
                                  width: 150,
                                  height: 340,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/welcome/2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(75),
                                  ),
                                ),
                              ],
                            ),
                        SizedBox(width: 10),
                            Column(
                              children: [
                                Container(
                                  width: 150,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/welcome/1.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(75),
                                  ),
                                  margin: EdgeInsets.only(bottom: 10),
                                ),
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/welcome/3.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(75),
                                  ),
                                ),
                              ],
                            ),
                      ],
                    ),
                  ),
                ),
                  Positioned(
                    bottom: 180,
                    left: 25,
                    right: 25,
                    child:
                    Column(
                        children: [
                          RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'The ',
                                    style: TextStyles.heading3Bold,
                                  ),
                                  TextSpan(
                                    text: 'Fashion App',
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeights.bold,
                                      fontFamily: appFont,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' That',
                                    style: TextStyles.heading3Bold,
                                  )
                                ]
                            ),
                          ),
                          Text( 'Makes You Look Your Best',
                            style: TextStyles.heading3Bold,
                          ),
                        ],
                    ),
                  ),
                  Positioned(
                    bottom: 130,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Column(
                        children: [
                          Text('Lorem ipsum dolor eit amit, consectetur',
                        style: TextStyles.xSmallRegular ,
                      ),
                          Text('adipiscing elit, set do eiusmod tempor incididunt',
                            style: TextStyles.xSmallRegular ,
                          ),
                      ],
                    ),
                  ),
                  ),
                  Positioned(
                      bottom: 70,
                      left: 20,
                      right: 20,
                      child:InkWell(
                        onTap: () {

                      }, child: Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Center(
                          child: Text(
                            'Let`s Get Started',
                            style: TextStyles.mediumMedium,
                          ),
                        ),
                      ),
                    )
                  ),
                  Positioned(
                    bottom: 35,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyles.smallMedium,
                            ),
                            TextSpan(
                              text: 'Sign In',
                              style: TextStyle(
                                color: primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {

                                  }
                            ),
                          ],
                        ),
                      )
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