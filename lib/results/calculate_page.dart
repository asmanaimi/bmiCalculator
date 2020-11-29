import 'package:bmi_calculator/CONST_themes/constant.dart';
import 'package:bmi_calculator/UI_Widgets/round_buttom.dart';
import 'package:bmi_calculator/results/BMIResult.dart';
import 'package:bmi_calculator/UI_Widgets/ICONCARD.dart';
import 'package:bmi_calculator/results/calculator_bmi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../UI_Widgets/Calculatebuttom.dart';
import '../UI_Widgets/MyCards.dart';
import 'package:slider/slider.dart';
import '../results/calculator_bmi.dart';
import '../results/calculator_bmi.dart';

enum Gender {
  male,
  female,
}

class CalculatePage extends StatefulWidget {
  CalculatePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  Gender gender;
  int height = 300;
  int weight = 60;
  int age = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyCards(
                      onPress: () {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                      couleur: gender == Gender.male
                          ? activeCardColor
                          : Inactivecolor,
                      cardchild:
                          ICON(icon: FontAwesomeIcons.mars, label: "MALE"),
                    ),
                  ),
                  Expanded(
                    child: MyCards(
                      onPress: () {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                      couleur: gender == Gender.female
                          ? activeCardColor
                          : Inactivecolor,
                      cardchild:
                          ICON(icon: FontAwesomeIcons.venus, label: "FEMALE"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyCards(
                couleur: activeCardColor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: KnumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 15.0),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8DE98),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 320.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyCards(
                      couleur: activeCardColor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: labelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: KnumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButtom(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundButtom(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCards(
                      couleur: activeCardColor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Age',
                            style: labelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: KnumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButtom(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundButtom(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Buttomcalculate(
              buttonTitle: 'CALCULATE',
              onTap: () {
                Calculator_bmi calc =
                    Calculator_bmi(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResult(
                      bmiResult: calc.CalculeBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getTips(),
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }
}
