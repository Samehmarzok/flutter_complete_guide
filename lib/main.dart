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
      'What\'s your favorit color?',
      'What\'s your favorit Animal?'
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
            questions[_questionIndex],
          ),
          Answer(_answerQuestions),
          Answer(_answerQuestions),
          Answer(_answerQuestions),
        ],
      ),
    ));
  }
}
