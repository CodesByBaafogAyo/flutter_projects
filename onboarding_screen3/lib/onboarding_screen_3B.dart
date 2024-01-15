import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Onboarding3B extends StatefulWidget {
  const Onboarding3B({super.key});

  @override
  State<Onboarding3B> createState() => _Onboarding3BState();
}

class _Onboarding3BState extends State<Onboarding3B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Text('data'),
            flex: 2,
          ),
          Expanded(
            child: Text('gel'),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
