import 'package:flutter/material.dart';
import 'package:login_design/Screens/login.dart';
import 'package:login_design/Screens/messenger.dart';

void main() {
  runApp(const MyWidget());
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: messenger(),
    );
  }
}