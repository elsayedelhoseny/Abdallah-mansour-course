import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final value;
  final weight;
  final age;

  final isSelected;

  ResultScreen(
      {@required this.value,
      @required this.weight,
      @required this.age,
      @required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent.withOpacity(0.6),
      ),
      body: Container(
        width: double.infinity,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender :${isSelected ? 'Male' : 'Female'} ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Age : $age',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Weight : $weight',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Height :$value ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
