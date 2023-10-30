import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); // accepts text input as argument
  
    final String text; // store text variable
    @override
    Widget build(context){

      return Text(
        text, // use text variable
        style: const TextStyle(
          color: Colors.amber,
          fontSize: 40,
          fontFamily: String.fromEnvironment("Courier New")
        ),
    );
  }
}