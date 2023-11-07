import 'package:flutter/material.dart';
import 'dart:math' as math;

final randomizer = math.Random();
int dieNumber = 6;
int dieType = 6;

class DieRoller extends StatefulWidget {
  const DieRoller({super.key});

  @override
  State<DieRoller> createState()  {
    // stateful widget _does not_ have a build method!
    return _DieRollerState(); // _DieRollerState _does_ have a build method, and w just call that as a function here.
  }
}

// and now the second class, extending the first.
// flutter requires these two classes to be detached from each other.
// and here we do have the build method.
class _DieRollerState extends State<DieRoller> {
  // underscore "_" means that this class is private to die_roller.dart -- even if we import this to main.dart. reason being that this should only be used internally.

  void rollDie() {
    setState(() {
      // the setState function is built into the "State" superclass, and allows us to change the state of the widget when rollDie is called.
      dieNumber = randomizer.nextInt(dieType) + 1;   
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment
          .center,
      children: [
        const DieOptions(),
              Container(
                height: 180,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/d$dieType-l.png'
                    )
                  )
                ),
                child: Center(
                  child: Text(
                    '$dieNumber',
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0),
                  )
                ),
              ),
        OutlinedButton(
          onPressed: rollDie,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
          ),
          child: const Text(
            "Roll the Die!"
          ),
        ),
      ],
    );
  }
}

// DieOptions Class
class DieOptions extends StatelessWidget {
  const DieOptions({super.key});

  @override
  Widget build(context){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ImageContainer('assets/images/d4-l.png', 4),
        ImageContainer('assets/images/d6-l.png', 6),
        ImageContainer('assets/images/d20-l.png', 20),
      ],
    );
  }
}

// ImageContainer Class
class ImageContainer extends StatefulWidget{
  const ImageContainer(this.imagePath, this.dieOption, {super.key});

  final String imagePath;
  final int dieOption;

  @override
  State<ImageContainer> createState(){
    return _ImageContainerState();
  }
}

class _ImageContainerState extends State<ImageContainer>{

  void onTap(){
  }

  @override
  Widget build(context){
    return GestureDetector(
      onTap: (){
        setState(() {
        dieType = widget.dieOption;
        });
      },
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            )
          ),
          child: Center(
            child: Text(
              '${widget.dieOption}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 10,
                fontWeight: FontWeight.bold,
              )
            ),
          )
      ),
    );
  }
}