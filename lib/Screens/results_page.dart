import 'dart:ffi';

import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import '../components/buttom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.BmiTitle,
      required this.BmiScore,
      required this.BmiDescription});
  final String? BmiTitle;
  final String? BmiScore;
  final String? BmiDescription;
  @override
  Widget build(BuildContext context) {
    print('BmiTitle: $BmiTitle');
    print('BmiScore: $BmiScore');
    print('BmiDescription: $BmiDescription');
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 20.0, top: 15.0),
                  child: Text(
                    'Your Result',
                    style: klargeTextStyle,
                  )),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kcardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(BmiTitle ?? '',
                          style: klabelTextStyle.copyWith(
                              color: BmiTitle == 'INVALID'
                                  ? Colors.red // Set color for invalid case
                                  : Colors.greenAccent,
                              fontWeight: FontWeight.bold)),
                      Text(BmiScore ?? '', style: kxlargeTextStyle),
                      Text(
                        BmiDescription ?? '',
                        textAlign: TextAlign.center,
                        style: kBMITextStyle.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              BottomButton(
                label: 'RECALCULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ]));
  }
}
