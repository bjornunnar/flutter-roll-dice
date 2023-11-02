import 'package:flutter/material.dart';

// variables outside class
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget { // my custom widget inherits from StatelessWidget "superclass"
  GradientContainer(this.colors, {super.key}); // gets 'key' value from superclass and implements as 'key'.
  
  final List<Color> colors;
  var activeDieImage = 'assets/images/dice-1.png';

  void rollDie(){
    activeDieImage = 'assets/images/dice-2.png';
  }


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
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset( //using image helper function, get asset named in pubspec.yaml
                  activeDieImage,
                  width: 200,
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: rollDie,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, 
                    textStyle: const TextStyle(
                      fontSize: 28,
                    )
                  ),
                  child: const Text("Roll Die"),
                )
              ],
            ),
          ),
        );
  }
}