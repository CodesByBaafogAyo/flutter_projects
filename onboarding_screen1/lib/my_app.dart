import 'package:flutter/material.dart';
import 'package:onboarding_screens_15/onboarding_screen_1A.dart';
import 'package:onboarding_screens_15/onboarding_screen_1B.dart';
// import 'my_home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Onboarding1A(),
    );
  }
}
