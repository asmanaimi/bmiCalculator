import 'package:flutter/material.dart';

class RoundButtom extends StatelessWidget {
 
 RoundButtom({@required this.icon, @required this.onPressed});
 final IconData icon ;
 final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(icon),
      onPressed:onPressed,
      elevation: 0.0,
      constraints:BoxConstraints.tightFor(
  width: 56.0,
  height: 56.0,
),
      shape:CircleBorder(),
      fillColor:Color(0xFFEB1555),
    );
  }
}