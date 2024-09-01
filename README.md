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

quiz_app/
│
├── lib/
│   ├──> main.dart                  # Main entry point of the application
│   ├──> quiz.dart                  # Main widget handling the layout and navigation
│   ├──> answer_button.dart         # Custom widget to style and handle answer buttons
│   ├──> questions_screen.dart      # Screen widget displaying questions and possible answers
│   ├──> results_screen.dart        # Screen widget showing the quiz results
│   ├──> start_screen.dart          # Initial screen with a start button
│   ├──> data/
│   │   └──> questions.dart         # Data source for questions and answers
|   ├──> results screen.dart 
│   ├──> questions_summary/
│   │   ├──> questions_summary.dart # Custom widget for summarizing question results
│   │   ├──> question_identifier.dart # Custom widget for displaying the question index in the 
│   │   └── summary_item.dart       # Custom widget for styling each row in the results screen
│
└── pubspec.yaml                   # Configuration file for dependencies and assets
   
## Installation and Setup


























