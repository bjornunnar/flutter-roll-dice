import 'package:flutter/material.dart';
import 'dart:math' as math;

final randomizer = math.Random();

class DieRoller extends StatefulWidget {
  const DieRoller({super.key});

  
  @override
  State<DieRoller> createState(){ // stateful widget _does not_ have a build method!
  return _DieRollerState(); // _DieRollerState _does_ have a build method, and w just call that as a function here.

  }
}

// and now the second class, extending the first.
// flutter requires these two classes to be detached from each other.
// and here we do have the build method.
class _DieRollerState extends State<DieRoller>{ // underscore "_" means that this class is private to die_roller.dart -- even if we import this to main.dart. reason being that this should only be used internally.

  int dieNumber = 2;

  void rollDie(){
    setState(() { // the setState function is built into the "State" superclass, and allows us to change the state of the widget when rollDie is called.
    dieNumber = randomizer.nextInt(6) + 1;
    });
  }

@override
Widget build(context){
  return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset( //using image helper function, get asset named in pubspec.yaml
                  'assets/images/dice-$dieNumber.png',
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
            );
}


}