import 'package:flutter/material.dart';

import 'feature/home_screen/home_screen.dart';
import 'feature/on_bording_screen/on_borading_screen.dart';
import 'feature/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.splashname,
      // initialRoute: OnboradingScreen.onboradingnavigator,
      routes: {
        SplashScreen.splashname: (context) => SplashScreen(),
        OnboradingScreen.onboradingnavigator: (context) => OnboradingScreen(),
        HomeScreen.home: (context) => HomeScreen(),
      },
      darkTheme: ThemeData(brightness: Brightness.dark),
    );
  }
}




