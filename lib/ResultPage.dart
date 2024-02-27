
import 'package:bmi_calculator/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constant.dart';
import 'package:bmi_calculator/BottomButton.dart';

class Result extends StatelessWidget {
  Result(this.bmiResult, this.resultText, this.interpretation);
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              kInActiveColour,
               Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    interpretation,
                    style: kBodyTextStyle,
                  )
                ],
              ),
              () {},
            ),
          ),
          GestureDetectorButton(() {
            Navigator.pop(context);
          }, 'RECALCULATE')
        ],
      ),
    );
  }
}
