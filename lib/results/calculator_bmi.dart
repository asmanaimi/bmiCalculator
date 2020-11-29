import 'dart:math';

class Calculator_bmi {
  Calculator_bmi({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String CalculeBMI() {
    double bmi = weight / pow(height / 100, 2);
    _bmi = bmi.toDouble();
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getTips() {
    if (_bmi >= 25) {
      return 'You have a higher weight you must be practise sport';
    } else if (_bmi > 18.5) {
      return 'You have a normal weight, great job';
    } else {
      return 'You have a lower weight ,you have eat more';
    }
  }
}
