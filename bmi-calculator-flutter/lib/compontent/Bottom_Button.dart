import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class Bottom_Button extends StatelessWidget {
  Bottom_Button({@required this.onTap, @required this.text}) {}
  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          text,
          style: kLargeButtomTextStyle,
        )),
        color: kBottomContainColor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}
