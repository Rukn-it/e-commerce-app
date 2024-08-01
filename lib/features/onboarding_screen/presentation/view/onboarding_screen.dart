import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import 'providers/current_index_notifier.dart';
import 'widgets/page_view.dart';
import 'widgets/skip_section.dart';

class OnbordingScreen extends ConsumerWidget {
    OnbordingScreen({super.key});
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(appIndex);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
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
          child: SafeArea(
            child: Column(
              children: [
                SkipSection(),
                OnboardingPageView(
                  currentIndex: currentIndex,
                  controller: _controller,
                  onPageChanged: (int index) {
                    ref.read(appIndex.notifier).state = index;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}