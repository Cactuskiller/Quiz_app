# Quiz App - Flutter Project

## Project Overview

The Quiz App is an interactive mobile application built using Flutter and Dart. The main functionality of the app is to present a series of questions and allow users to select answers. The app then evaluates the answers and displays the result. This project serves as an excellent exercise in state management, dynamic UI updates, and basic Flutter concepts.

## Features
- Dynamic Question Handling: The app dynamically displays questions and possible answers, allowing users to interact and select their answers.

- State Management: The app demonstrates effective use of stateful widgets to manage UI changes based on user interaction.
   
- Custom Widgets: Custom widgets are used for buttons and result summaries, promoting reusable and modular code.

- UI Components: The app uses various Flutter widgets like Column, Text, ElevatedButton, TextButton, and more to create a clean and responsive user interface.

- Theming and Styling: The app includes custom theming for buttons and text to provide a consistent and visually appealing user experience.

## Technologies Used 

- Flutter: The framework used to build the app, offering a comprehensive set of pre-designed widgets and tools.
- Dart: The programming language used to write the logic and UI code for the application.
- Google Fonts: Used for custom text styling to enhance the visual appeal of the app.

## Project Structure

##### quiz_app/
##### │
##### ├── lib/
##### │   ├──> main.dart                               # Main entry point of the application
##### │   ├──> quiz.dart                               # Main widget handling the layout and navigation
##### │   ├──> answer_button.dart                      # Custom widget to style and handle answer buttons
##### │   ├──> questions_screen.dart                   # Screen widget displaying questions and possible answers
##### │   ├──> results_screen.dart                     # Screen widget showing the quiz results
##### │   ├──> start_screen.dart                       # Initial screen with a start button
##### │   ├──> data/
##### │   │   └──> questions.dart                      # Data source for questions and answers
##### |   ├──> models/
##### │   │   └──> quiz_questions.dart                 # blueprint class for quiz questions and answers 
##### │   ├──> questions_summary/
##### │   │   ├──> questions_summary.dart              # Custom widget for summarizing question results
##### │   │   ├──> question_identifier.dart            # Custom widget for displaying the question index in the 
##### │   │   └── summary_item.dart                    # Custom widget for styling each row in the results screen
##### │
##### └── pubspec.yaml                                 # Configuration file for dependencies and assets
   
## Installation and Setup
1- Clone the repository:
```git clone https://github.com/yourusername/quiz-app.git```
```cd quiz-app```

2- Install dependencies:
``` flutter pub get```

3- Run the application:
``` flutter run```
## Code Explanation

### main.dart 
This file serves as the entry point for the Flutter app. It initializes the app using MaterialApp as the root widget and manages the overall navigation between different screens like the start screen, questions screen, and results screen.

### quiz.dart
quiz.dart contains the main Quiz widget, a stateful widget responsible for managing the quiz flow. It switches between screens based on user interactions, such as starting the quiz, selecting answers, and displaying results.

### answer_button.dart
This file defines the AnswerButton widget, a custom stateless widget designed to display the answer options as buttons. The buttons are styled using the ElevatedButton widget, and they trigger the function to handle answer selection.

### questions_screen.dart
questions_screen.dart manages the display of questions and possible answers. It uses a Column widget to organize the question text and the answer buttons vertically. The map function is used with the spread operator to dynamically generate answer buttons.

### start_screen.dart
start_screen.dart contains the StartScreen widget, which is the initial screen displayed when the app is launched. It includes a start button that transitions the app to the questions screen.

### questions_summary/questions_summary.dart
This file defines the QuestionsSummary widget, which is responsible for summarizing the questions, the correct answers, and the user’s selected answers. It is displayed on the results screen to give users a detailed overview of their performance.

### questions_summary/question_identifier.dart
This file contains the QuestionIdentifier widget, which is used to customize the question index displayed on the results screen. The widget styles the index based on whether the user's answer is correct (blue) or incorrect (red).

### questions_summary/summary_item.dart
This file defines the SummaryItem widget, which styles each row in the results screen and combines the QuestionIdentifier widget. It checks if the user's answer is correct and applies the appropriate styling.

### results_screen.dart
This file defines the ResultsScreen widget, which displays the quiz results after all questions are answered. It shows the number of correct answers and provides a summary of the user's selections. The screen also includes a button to restart the quiz.

### data/questions.dart
This file provides the data structure for the questions and answers. It includes a list of question objects, each containing the question text and a list of possible answers, with the correct answer always listed first.

### models/quiz_questions.dart
This file defines the structure for quiz questions and answers each QuizQuestions object contains: 1- Question text 2- List of answers (correct answer first) .It also includes a method to shuffle answers for randomized presentation.

### pubspec.yaml
This configuration file lists the project's dependencies, such as flutter, google_fonts, and any assets like images. It ensures all necessary packages are included when the app is built.


## Future Enhancements
- Additional Question Types: Incorporate different types of questions, such as multiple-choice or true/false, to make the quiz more versatile.
- Score Tracking: Implement a feature to track the user's score over multiple quiz attempts.
- Custom Quizzes: Allow users to create and take custom quizzes by providing their own set of questions and answers.

## License
  This project is licensed under the MIT License. See the LICENSE file for more details.
  view it here => https://github.com/Cactuskiller/Quiz_app/blob/main/LICENSE


