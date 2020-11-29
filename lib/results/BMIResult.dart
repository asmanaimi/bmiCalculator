import 'package:bmi_calculator/CONST_themes/constant.dart';
import 'package:bmi_calculator/UI_Widgets/Calculatebuttom.dart';
import 'package:flutter/material.dart';
import '../UI_Widgets/MyCards.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('YOUR RESULT', style: ColorCalculatetitle),
            ),
          ),
          Expanded(
            flex: 5,
            child: MyCards(
                couleur: activeCardColor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText, style: resulttextstyle),
                    Text(bmiResult, style: KEYBMIstyle),
                    Text(
                      interpretation,
                      style: interresultstyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          ),
          Buttomcalculate(
            buttonTitle: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
