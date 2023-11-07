import 'package:flutter/material.dart';
import 'package:flutter_udemy/die_roller.dart';

// variables outside class
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget { // my custom widget inherits from StatelessWidget "superclass"
  const GradientContainer(this.colors, {super.key}); // gets 'key' value from superclass and implements as 'key'.
  
  final List<Color> colors;


  @override // "StatelessWidget" expects a 'build' method. "@override" makes clear that we are overriding for our class
  Widget build(context) { //build function returns the Widget object
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(
            child: DieRoller(),
          ),
        );
  }
}