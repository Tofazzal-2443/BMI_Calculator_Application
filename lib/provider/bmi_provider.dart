import 'package:flutter/material.dart';

class BmiProvider extends ChangeNotifier{
  TextEditingController weightController = TextEditingController();
  TextEditingController feetController = TextEditingController();
  TextEditingController inchController = TextEditingController();

  clearField(){
    weightController.clear();
    feetController.clear();
    inchController.clear();
    notifyListeners();
  }

  double bmi = 0.0;

  bmiCalculation(){
    var weight = double.parse(weightController.text);
    var feet = double.parse(feetController.text);
    var inch = double.parse(inchController.text);
    var meter = (feet * 0.3048) + (inch * 0.0254);
    bmi = (weight) / (meter * meter);
    notifyListeners();
  }
}