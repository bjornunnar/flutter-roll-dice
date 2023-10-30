import 'package:flutter/material.dart';

// variables outside class
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget { // my custom widget inherits from StatelessWidget "superclass"
  const GradientContainer(this.colors, {super.key}); // gets 'key' value from superclass and implements as 'key'.
  
  final List<Color> colors;


  @override // "StatelessWidget" expects a 'build' method. This makes clear that we are overriding for our class
  Widget build(context) { //build function returns the Widget object
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: Image.asset( //using image helper function, get asset named in pubspec.yaml
            'assets/images/dice-1.png',
            width: 200,),
          ),
        );
  }
}