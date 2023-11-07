import 'package:flutter/material.dart';
import 'package:flutter_udemy/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 0, 0, 100), 
          Color.fromARGB(255, 41, 41, 41)]), // my custom widget, defined in separate file
      ),
    ),
  );
}