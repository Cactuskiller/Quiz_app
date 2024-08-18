import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(39, 0, 90, 1),
                Color.fromARGB(255, 104, 0, 173)
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
//this is the main folder that will handels the layout of the project
