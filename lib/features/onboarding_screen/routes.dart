import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/features/welcome_screen/presentation/view/welcome_screen.dart';
import 'presentation/view/onboarding_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'presentation/view/providers/onboarding_provider.dart';
import 'presentation/view/widgets/skip_section.dart';


class AppRoutes {
  static GoRouter createRouter(WidgetRef ref) {
    final isOnboardingCompleted = ref.watch(onboardingNotifierProvider);

    return GoRouter(
      initialLocation: isOnboardingCompleted
          ? '/features/welcome_screen/presentation/view'
          : '/features/onboarding_screen/presentation/view',
      routes: [
        GoRoute(
          path: '/features/onboarding_screen/presentation/view',
          builder: (context, state) => OnbordingScreen(),
        ),
        GoRoute(
          path: '/features/welcome_screen/presentation/view',
          builder: (context, state) => WelcomeBody(),
        ),
      ],
    );
  }
}

class RouteGenerator {
  static const String onboardingPage = '/features/onboarding_screen/presentation/view/onboarding_screen.dart';
  static const String WelcomePage = '/features/welcome_screen/presentation/view/welcome_screen.dart';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboardingPage:
        return MaterialPageRoute(builder: (_) => OnbordingScreen());
      case WelcomePage:
        return MaterialPageRoute(builder: (_) => WelcomeBody());
      default:
        return MaterialPageRoute(builder: (_) =>OnbordingScreen());
    }
  }
}