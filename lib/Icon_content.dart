import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constant.dart';
class IconContent extends StatelessWidget {
  IconContent(this.icons, this.label);
  final IconData icons;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icons,
          size: 70,
        ),
        const SizedBox(height: 4),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
