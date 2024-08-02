import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/config/app_theme.dart';
import 'package:trailing_e_commerce_app/features/splash/presentation/view/splash_screen.dart';
import 'core/core.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}