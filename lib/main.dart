import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//void main() {
//runApp(MyApp());
//}
// Shorter Syntex for void
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      //Create a Map
      {
        'QuestionText': 'What\'s your favorit color?',
        'Answers': ['Black', 'Red', 'Green'],
      },
      {
        'QuestionText': 'What\'s your favorit Animal?',
        'Answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'QuestionText': 'Who\'s your favorit Instructor?',
        'Answers': ['Max', 'Stef', 'Hanz', 'Sameh'],
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(
              children: [
                // Custom Widget File
                Question(
                  questions[_questionIndex]['QuestionText'],
                ),
                // Dynamic BTN According to Map
                ...(questions[_questionIndex]['Answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestions, answer);
                }).toList()
              ],
            )));
  }
}
