import 'dart:math';

import 'package:flutter/material.dart';

class UserBmiModel {
  String gender;
  int height;
  int weight;
  int age;

  UserBmiModel({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });

  double get resultBmi {
    double calculateBmi = (weight / pow(height / 100, 2)).roundToDouble();
    return calculateBmi;
  } 
  String get stringView {
  if (resultBmi < 18.5) {
    return 'Underweight';
  } else if (resultBmi < 25) {
    return 'Normal';
  } else if (resultBmi < 30) {
    return 'Overweight';
  } else {
    return 'Obese';
  }
}
Color get categoryColor {
  switch (stringView) {
    case 'Underweight':
      return const Color(0xFF3F51B5);
    case 'Normal':
      return const Color(0xFF4CAF50);
    case 'Overweight':
      return const Color(0xFFFFEB9800);
    case 'Obese':
      return const Color(0xFFF44336);
    default:
      return const Color(0xFF9E9E9E);
  }
}
String get healthAdvice {
  switch (stringView) {
    case 'Underweight':
      return 'Consider consulting a healthcare provider about healthy weight gain strategies.';
    case 'Normal':
      return 'Great! Maintain your current lifestyle with balanced diet and regular exercise.';
    case 'Overweight':
      return 'Consider a balanced diet and increased physical activity to reach a healthier weight.';
    case 'Obese':
      return 'Consult with a healthcare provider for a personalized weight management plan.';
    default:
      return 'Consult with a healthcare provider for personalized advice.';
  }
}
}