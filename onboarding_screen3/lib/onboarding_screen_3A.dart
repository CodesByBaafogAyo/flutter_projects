import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Onboarding3A extends StatefulWidget {
  const Onboarding3A({super.key});

  @override
  State<Onboarding3A> createState() => _Onboarding3AState();
}

class _Onboarding3AState extends State<Onboarding3A> {
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
