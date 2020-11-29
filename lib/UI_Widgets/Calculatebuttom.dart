
import 'package:bmi_calculator/CONST_themes/constant.dart';
import 'package:flutter/material.dart';


class Buttomcalculate extends StatelessWidget {
  Buttomcalculate({@required this.buttonTitle, @required this.onTap});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: ColorCalculateButtom,
        )),
        color: ColorContainerCard,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: buttomHeight,
      ),
    );
  }
}
