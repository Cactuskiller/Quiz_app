class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text; // questions
  final List<String> answers; //answers

  //a function to shuffle the answers and return a list
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(
        answers); //the of constructer makes sure to create a copy of the list
    shuffledList
        .shuffle(); //calling the shuffle method that provided in the list class on the copied list not the original
    return shuffledList;
  }
}


//Note: shuffledList.shuffle(); reaches out to the existing value in the memory and edits internal data structure data so it does not violate final key word because we are not reassigning a value to the shiffuledList 