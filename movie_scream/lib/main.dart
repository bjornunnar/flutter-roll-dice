import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Scream'),
      ),
      body: Center(
        child: Flex(
          direction: Axis.vertical, // Vertical Flex direction
          children: <Widget>[
            Expanded(
              flex: 1, // Each child takes up 1/4 of available space
              child: Flex(
                direction: Axis.horizontal, // Horizontal Flex direction
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10.0), // Set margins here
                      color: Colors.white,
                      child: Center(
                        child: Image.asset(
                          'assets/saturday_night_fever.jpg', // Replace with the actual asset path
                          fit: BoxFit.cover, // You can adjust the fit as needed
                        )
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10.0), // Set margins here
                      color: Colors.white,
                      child: Center(
                        child: Image.asset(
                          'assets/eraserhead.jpg', // Replace with the actual asset path
                          fit: BoxFit.cover, // You can adjust the fit as needed
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10.0), // Set margins here
                      color: Colors.white,
                      child: Center(
                        child: Image.asset(
                          'assets/the_spy_who_loved_me.jpg', // Replace with the actual asset path
                          fit: BoxFit.cover, // You can adjust the fit as needed
                        )
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10.0), // Set margins here
                      color: Colors.white,
                      child: Center(
                        child: Image.asset(
                          'assets/airport_77.jpg', // Replace with the actual asset path
                          fit: BoxFit.cover, // You can adjust the fit as needed
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
