import 'package:flutter/material.dart';
import 'package:flutter_udemy/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Color.fromARGB(255, 100, 100, 0), Color.fromARGB(255, 0, 0, 100)]), // my custom widget, defined in separate file
      ),
    ),
  );
}
