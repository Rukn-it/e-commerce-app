import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';

class ThreeDotsProgressIndicator extends StatefulWidget {
  const ThreeDotsProgressIndicator({super.key});

  @override
  _ThreeDotsProgressIndicatorState createState() => _ThreeDotsProgressIndicatorState();
}

class _ThreeDotsProgressIndicatorState extends State<ThreeDotsProgressIndicator> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Dot(animationValue: _animation.value, position: 0),
            SizedBox(width: 8),
            Dot(animationValue: _animation.value, position: 1),
            SizedBox(width: 8),
            Dot(animationValue: _animation.value, position: 2),
          ],
        );
      },
    );
  }
}

class Dot extends StatelessWidget {
  final double animationValue;
  final int position;

  Dot({required this.animationValue, required this.position});

  @override
  Widget build(BuildContext context) {
    double opacity = ((animationValue - position / 3).clamp(0.0, 1.0));
    return Opacity(
      opacity: opacity,
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}