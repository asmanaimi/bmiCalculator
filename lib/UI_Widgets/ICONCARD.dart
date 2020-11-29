import 'package:bmi_calculator/CONST_themes/constant.dart';
import 'package:flutter/material.dart';


class ICON extends StatelessWidget {
  ICON({this.icon,this.label});
 final IconData icon ;
 final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      icon,
                      size: 40.0,
                    ),
                    SizedBox(
                      height: 13.0,
                    ),
                    Text(
                     label,
                      style: labelTextStyle,
                      ),
                    
                  ],
                );
  }
}