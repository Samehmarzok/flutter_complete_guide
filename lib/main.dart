import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = const [
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

  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('No More Questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestions,
              questions: _questions,
              questionIndex: _questionIndex,
            )
          : Result(),
    ));
  }
}
