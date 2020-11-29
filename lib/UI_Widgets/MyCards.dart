import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  MyCards({@required this.couleur, this.cardchild, this.onPress});
  final Color couleur;
  final Widget cardchild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(1.0),
        /* padding: const EdgeInsets.only(
     left: 6,
      top: 6,
      right: 6,
      bottom: 2,
    ),*/
        decoration: BoxDecoration(
          color: couleur,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
