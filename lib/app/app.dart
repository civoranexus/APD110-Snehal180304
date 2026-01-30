import 'package:flutter/material.dart';
import '../core/theme/app_theme.dart';
import '../features/auth/login/login_screen.dart';
import '../features/auth/login/welcome_page.dart';
import 'app_routes.dart';

class MarketReachApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MarketReach',
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (_) => LoginScreen(),
        AppRoutes.welcome: (_) => WelcomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
