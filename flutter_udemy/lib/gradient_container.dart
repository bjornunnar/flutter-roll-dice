import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget { // my custom widget inherits from StatelessWidget "superclass"
  const GradientContainer({super.key}); // gets 'key' value from superclass and implements as 'key'.
  
  @override // "StatelessWidget" expects a 'build' method. This makes clear that we are overriding for our class
  Widget build(context) { //build function returns the Widget object
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 100, 100, 0),
                Color.fromARGB(255, 0, 0, 100),
              ],
              begin:Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello Flutter',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 40,
                fontFamily: String.fromEnvironment("Courier New")
                ),
            ),
          ),
        );
  }
}