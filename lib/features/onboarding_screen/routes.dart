import 'package:trailing_e_commerce_app/features/welcome_screen/presentation/view/welcome_screen.dart';
import 'presentation/view/onboarding_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/onboarding_provider.dart';


class AppRoutes {
  static GoRouter createRouter(WidgetRef ref) {
    final isOnboardingCompleted = ref.watch(onboardingNotifierProvider);

    return GoRouter(
      initialLocation: isOnboardingCompleted
          ? '/welcome'
          : '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => OnboardingScreen(),
        ),
        GoRoute(
          path: '/welcome',
          builder: (context, state) => WelcomeBody(),
        ),
      ],
    );
  }
}

