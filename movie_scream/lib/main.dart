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
                      color: Colors.red,
                      child: Center(
                        child: Text('One'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10.0), // Set margins here
                      color: Colors.green,
                      child: Center(child: Text('Container 2')),
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
                      color: Colors.blue,
                      child: Center(child: Text('Container 3')),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10.0), // Set margins here
                      color: Colors.yellow,
                      child: Center(child: Text('Container 4')),
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