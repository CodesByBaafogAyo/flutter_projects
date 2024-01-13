import 'package:class_onboarding_screen/my_home_page.dart';
import 'package:class_onboarding_screen/screen_2.dart';
import 'package:flutter/material.dart';
import 'package:class_onboarding_screen/screen_3.dart';

class MyClassApp extends StatelessWidget {
  const MyClassApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => MyHomePage(),
      // },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
