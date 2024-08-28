import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  //in the following a function to map the chosen answers with the questions using Maps data structures

  List<Map<String, Object>> getSummeryData() {
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
    final summaryData = getSummeryData();
    final numTotalQuestions = questions.length; //total amount of questions

    //the following varable stor a list that adds or drops values based on if it's true or false

    //the reseon why we added length in the end , cuz we want to store a number not a list
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answers'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "you answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
