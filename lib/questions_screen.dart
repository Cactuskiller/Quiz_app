// use statful widget to return a text widget\

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[
        currentQuestionIndex]; //holding the current question in the list
    return SizedBox(
      //another way of centering the content using sizedbox
      width: double.infinity, //means take as much width needed
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),
            //the three dots called Spread Operator
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                //returns a widget
                answerText: answer,
                onTap: answerQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}

// key points of the Spread Operator

//map Function: The map function creates a new widget (in this case, an AnswerButton) for each item in the answers list.

//Column Widget: The Column widget’s children property expects a list of individual widgets.

//Spread Operator (...): Since map returns an Iterable of widgets, you need to use the spread operator (...) to unpack (or "spread") these widgets into the list expected by the Column widget. This allows each AnswerButton to be inserted into the Column as separate widgets.

//NOTE : the reason why we are using the following approch it's because we want to be able to generate dynamic answer widget insted of hard coding it , and the idea of making it dynamic is crucial since most of the time we're working with dynamic amount of data 

//the getShuffledAnswrs() is a method used to make a copy of a list and then shuffled it(change the order) and the reason why we're implmenting it on a copy because shuffle chnage the original list while map does not 