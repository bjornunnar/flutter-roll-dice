import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
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
        ),
      ),
    ),
  );
}
