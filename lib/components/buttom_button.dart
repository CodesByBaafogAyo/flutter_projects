import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.label});
  final VoidCallback onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Fix: Pass onTap to GestureDetector's onTap
      child: Container(
        alignment: Alignment.center,
        child: Text(
          label,
          style: kmediumTextStyle,
        ),
        color: kbottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}
