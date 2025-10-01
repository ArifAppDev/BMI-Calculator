import 'dart:math';

class Calculate {
  final double height;
  final double weight;
  double mybmi = 0;

  Calculate({required this.height, required this.weight});

  // BMI = weight (kg) / [height (m)]²

  // bmi 18-24 normal
  // bmi less than 18 is underweight
  // bmi heigher than 24 is overweight

  double bmi() {
    mybmi = weight / pow(height / 100, 2);

    return mybmi;
  }

  String status() {
    if (mybmi > 24) {
      return "Overweight";
    } else if (mybmi < 18) {
      return "Underweight";
    } else {
      return "Normal";
    }
  }

  String description() {
    if (mybmi > 24) {
      return "You are Overweight you need eat less and do exercise everyday";
    } else if (mybmi < 18) {
      return "You are Underweight you need to eat more protin and exercise everyday 40 minutes";
    } else {
      return "Great!!... You are perfect Keep it up";
    }
  }
}
