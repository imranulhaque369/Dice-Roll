import 'package:flutter/material.dart';
import 'package:flutter_1/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(Colors.deepPurple, Colors.deepPurpleAccent),
      ),
    ),
  );
}
