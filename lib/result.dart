import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;

  Result(this.resultscore);

  String get resultPhrase {
    String resultText;
    if (resultscore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultscore <= 12) {
      resultText = 'Pretty Likeable!';
    } else if (resultscore <= 16) {
      resultText = 'you are ......Strange?!';
    } else {
      resultText = 'you are so Bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
