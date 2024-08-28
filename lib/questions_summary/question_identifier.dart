//the following widget is used to customize the questions index that will show in the results screen , includeing styling it red if the answer to the question is wrong and blue if the answer to the question is right

import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});
  //accpting two arguments the first is an integer which is the questions number the seacond oen to check if the answer to the question is right or wrong

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    //setting the value of the questions index
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      //adding colors using ternary operstors
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        //styling the questions number
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
