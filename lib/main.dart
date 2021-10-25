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
      'Answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'QuestionText': 'What\'s your favorit Animal?',
      'Answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'QuestionText': 'Who\'s your favorit Instructor?',
      'Answers': [
        {'text': 'Max', 'score': 3},
        {'text': 'Stef', 'score': 5},
        {'text': 'Hanz', 'score': 7},
        {'text': 'Sameh', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;

  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
       _questionIndex = 0;
       _totalScore = 0;
    });
  }
  
  void _answerQuestions(int score) {

    _totalScore += score;

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
          : Result(_totalScore,_resetQuiz),
    ));
  }
}
