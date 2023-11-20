import 'package:flutter/material.dart';

class BmiController {
  bool isSelected = true;
  double height = 120;
  int age = 20;
  int weight = 74;

  plus() {
    age++;
  }

  minus() {
    if (age > 0) {
      age--;
    }
  }

  plusW() {
    weight++;
  }

  minusW() {
    if (weight > 0) {
      weight--;
    }
  }

  navigateTo({context, page}) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ));
  }
}
