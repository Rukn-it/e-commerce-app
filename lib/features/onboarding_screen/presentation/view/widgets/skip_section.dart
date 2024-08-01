import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../welcome_screen/presentation/view/welcome_screen.dart';
import '../providers/onboarding_provider.dart';


class SkipSection extends ConsumerWidget {
  const SkipSection({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return SafeArea(child:
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(padding: const EdgeInsets.only(top: 25,right: 25),
        child:
        GestureDetector(
          onTap: () async{
              await ref
                  .read(onboardingNotifierProvider.notifier)
                  .completeOnboarding();
              context.go('/features/welcome_screen/presentation/view');
              },
          child:  Text(
          'Skip',
          style: TextStyles.smallRegular ,

        ),
        )
        )
      ],
    ));
  }
}

