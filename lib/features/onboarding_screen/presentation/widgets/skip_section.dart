/*this is header-section find in widget file */
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trailing_e_commerce_app/features/onboarding_screen/presentation/widgets/widget.dart';
import '../../../../../../core/constants/text_styles.dart';

class SkipSection extends ConsumerWidget {
  const SkipSection({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () async{
            await ref
                .read(onboardingNotifierProvider.notifier)
                .completeOnboarding();
            context.go('/welcome');},
          child:  const Text( 'Skip',
            style: TextStyles.smallRegular ,
          ),
        )
      ],
    );
  }
}

