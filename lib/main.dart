import 'package:flutter/material.dart';
import 'package:kick_zone/core/helper_functions/on_genrate_route.dart';
import 'package:kick_zone/core/utils/app_theme.dart';
import 'package:kick_zone/features/splash/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      title: 'Kick Zone',
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashScreen.routeName,
    );
  }
}
