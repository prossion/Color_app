import 'dart:math';
//library for using the Random class
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);
  //starting color of the application

  void changeColors() {
    setState(
      () {
        _color = Color.fromRGBO(
          //or with fromARGB with fourth arg as _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextDouble(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: changeColors,
        child: Container(
          child: Center(
            child: Text(
              "Hey There",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          color: _color,
        ),
      ),
    );
  }
}
