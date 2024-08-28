import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final void Function()
      onRestart; //a function that is executed when the restart button is pressed

  final List<String> chosenAnswers; //store list of answers chosen by the user

  //in the following a function to map the chosen answers with the questions using Maps data structures

//a type of syntax in dart that allow us to add the get key word wich works with a function that takes some class argument and produce a value , the benifit of using such a syntax is that we do not need to store the data of the function in a var insted the method it self could be used as a varable , even thuogh under the hoode it's just a function
  List<Map<String, Object>> get summeryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'questions': questions[i].text,
          'correct_answers': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    // final summaryData = summeryData; //no need to use the following
    final numTotalQuestions = questions.length; //total amount of questions

    //the following varable stor a list that adds or drops values based on if it's true or false

    //the reseon why we added length in the end , cuz we want to store a number not a list

    //an example of using arrow functions you still can use () {} function so it's optional
    final numCorrectQuestions = summeryData.where((data) => 
       data['user_answer'] == data['correct_answers']
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              //the upper text
              "you answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summeryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: onRestart,
              icon: const Icon(Icons.refresh),
              label: const Text(
                'Restart Quiz!',
              ),
            )
          ],
        ),
      ),
    );
  }
}
