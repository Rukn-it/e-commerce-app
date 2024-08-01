import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import 'Widgets/circle_decoration.dart';
import 'Widgets/description_text.dart';
import 'Widgets/image_grid.dart';
import 'Widgets/sign_in_text.dart';
import 'Widgets/start_button.dart';
import 'Widgets/welcome_text.dart';


class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home:Scaffold(
        body:  Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            backgroundColor,
            backgroundColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Center(
        child: Stack(
          children: [
            Positioned(left: -60, top: -30, child: CircleDecoration()),
            Positioned(bottom: 300,  top: 200,right: -100, child: CircleDecoration()),
            Positioned(bottom: 250, top: 50, right: 25,  left: 25, child: ImageGrid()),
            Positioned(bottom: 180, left: 25, right: 25, child: WelcomeText()),
            Positioned(bottom: 130, left: 0, right: 0, child: Center(child: DescriptionText())),
            Positioned(bottom: 70, left: 20, right: 20, child: StartButton()),
            Positioned(bottom: 35, left: 0, right: 0, child: Center(child: SignInText())),
          ],
        ),
      ),
       ),
       ),
    );
  }
}