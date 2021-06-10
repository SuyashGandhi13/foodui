import 'package:flutter/material.dart';
import 'package:foodui/home_screen.dart';

void main() {
  runApp(FoodUI());
}

class FoodUI extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}
