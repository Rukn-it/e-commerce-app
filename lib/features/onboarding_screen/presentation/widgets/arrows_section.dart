/*this is footer-arrow section*/
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trailing_e_commerce_app/features/onboarding_screen/presentation/widgets/widget.dart';

class ArrowSection extends ConsumerWidget {
  final PageController controller;

  const ArrowSection({required this.controller, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(appIndex);
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                /* shows left arrow: find detailes in arrowSectionWidget dir */
                ArrowButton(
                  isVisible: currentIndex > 0, /*does not appear in 1st page*/
                  icon: Icons.arrow_back,
                  onTap: () {
                    controller.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear);
                    ref.read(appIndex.notifier).state = currentIndex - 1;
                  },
                ),
                Row(      /* shows 3 dots: find detailes in arrowSectionWidget dir */
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardingItems.length,
                    (index) =>
                        DotBuilder(currentIndex: currentIndex, index: index),
                  ),
                ),
                /* shows right arrow: find detailes in arrowSectionWidget dir */
                ArrowButton(
                  isVisible: true,
                  icon: Icons.arrow_forward,
                  onTap: () {
                    /*check if we are not in 3rd page  */
                    if (currentIndex < onboardingItems.length - 1) {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                      ref.read(appIndex.notifier).state = currentIndex + 1;
                    } else {
                      /*  we are in 3rd page so move into welcompage */
                      ref.read(onboardingNotifierProvider.notifier)
                          .completeOnboarding();
                      context.go('/welcome');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
