import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key}); //constructer
//we rapped the text widget with the center to make the Start screen widget occupies as much space as posssible

  final void Function() startQuiz; //passing the switchScreen function as an argument so the startScreen widget nows the state of the content so then we can pass it to the button

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, //refers to the vertical size of column
        children: [
          //the following approch is prefered to add opacity
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255,
                255), //the following approch is prefered to add opacity using the color
          ),
          //the following approch for adding opticy is prefered not to be used
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            //sizebox is used to add spcsing between the widgets
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: AutofillHints.photo,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
