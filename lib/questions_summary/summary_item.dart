//this widget is used to style each row in the results secreen also to combine the questions identifiyer widget

// a Row widget will be used

//also we will be passing the string /object Map to the widget

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object>
      itemData; //this is used later to compear wethier the asnwer is right or wrong

  @override
  Widget build(BuildContext context) {
    //will have a varaibale to check the users answer with the correct answer
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answers'];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // for the index to be aligned at the top of the row
        children: [
          //since the values was passed as a named argument it was pass like the following in here
          QuestionIdentifier(
              //the index custome widget
              isCorrectAnswer: isCorrectAnswer,
              questionIndex: itemData['question_index'] as int),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign
                      .center, //this line has been added to modify the final layout of the questions, user and correct answers in the results screen
                  //the question place holder
                  itemData['questions'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5), //addign some space
                //place holder for the user answers
                Text(
                  itemData['user_answer'] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 202, 171, 252)),
                ),
                //place older for the correct answer
                Text(
                  itemData['correct_answers'] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 181, 254, 246)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
