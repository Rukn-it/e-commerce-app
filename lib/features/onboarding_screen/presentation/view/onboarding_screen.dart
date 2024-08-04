import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/widget.dart';

class OnboardingScreen extends ConsumerWidget {
  OnboardingScreen({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(appIndex);
    return MaterialApp(
      home: Scaffold(
        body: BackgroundContainer(  /*this is bg decoration  */
          child: SafeArea(
            child: Stack(
              children: [
                /*this is header-skip section find in widget file */
                const Positioned(bottom: 550, top: 20, right: 25, left: 25, child: SkipSection(), ),
                Positioned(bottom: -10, top: 60, right: -5, left: -5,
                  child: OnboardingPageView(     /*this calls page view class */
                    currentIndex: currentIndex,
                    controller: _controller,
                    onPageChanged: (int index) {
                      ref.read(appIndex.notifier).state = index;
                    },
                  ),
                ),
                Positioned(bottom: 10, top: 500, right: 10, left: 10,
                  child: ArrowSection(controller: _controller),   /*this is footer-arrow section*/
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}