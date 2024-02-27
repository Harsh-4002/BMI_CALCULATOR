import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constant.dart';

class GestureDetectorButton extends StatelessWidget {
  final VoidCallback onTap;
  final String calculateButton ;
  GestureDetectorButton(this.onTap,this.calculateButton);

  // const GestureDetectorButton({Key? key, required this.onTap})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call the onTap callback
      child: Container(
        child: Center(
          child: Text(
            calculateButton,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainHeight,
        padding: EdgeInsets.only(bottom: 10.0),
      ),
    );
  }
}