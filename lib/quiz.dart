//use a stateful widget to return the material app widget
import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // in the following we will learn how to render the content of a UI to change it when a button is pressed
  // we  can make use of the setState() function which is provided in the State class
  // Widget?
  //     activeScreen; //the initial widget will be start screen then when the button is pressed questions widgets will be displayed

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  //there is anothere approch were we can left the state up  where we can use ternary operators to control it
  var activeScreen = "start_screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions_screen";
    });
  }

//setState is a method in Flutter used to trigger a rebuild of the widget tree. When called, it tells Flutter to rerun the build method of the widget, reflecting any changes to the UI.
  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen); //seting the initial widget

    if (activeScreen == 'questions_screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
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
          child: screenWidget,
          //keep in mind we  can't pass a function cuz child wants a value of a type widget
        ),
      ),
    );
  }
}

//keep in mind statful widget works with two classes
