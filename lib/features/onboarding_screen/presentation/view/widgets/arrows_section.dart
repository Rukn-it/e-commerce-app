import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../data/onboarding_model.dart';
import '../providers/current_index_notifier.dart';
import '../providers/onboarding_provider.dart';
import 'dotBuilder.dart';

class ArrowSection extends ConsumerWidget {
  final PageController controller;
  ArrowSection({required this.controller,  super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(appIndex);
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            currentIndex > 0
                ?  GestureDetector(
              onTap: (){
                controller.previousPage(duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn);
                ref.read(appIndex.notifier).state = currentIndex-1; },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: primaryColor,
                    width: 2,
                  ),
                ),
                child: Icon(Icons.arrow_back, color: primaryColor),
              ),)
                : SizedBox(width: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingItems.length,
                    (index) => DotBuilder(currentIndex: currentIndex , index: index),
              ),
            ),
            GestureDetector(
              onTap: (){
                if (currentIndex < onboardingItems.length -1){
                  controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                  ref.read(appIndex.notifier).state = currentIndex+1;
                } else {
                  ref.read(onboardingNotifierProvider.notifier)
                      .completeOnboarding();
                  context.go('/features/welcome_screen/presentation/view');  }
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(Icons.arrow_forward, color: backgroundColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}