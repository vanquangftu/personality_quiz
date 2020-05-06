import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get printPhrase {
    String textString;
    if (totalScore <= 8) {
      textString = 'You are awesome and innocent.';
    } else if (totalScore <= 12) {
      textString = 'Pretty likeable.';
    } else if (totalScore <= 16) {
      textString = 'You are ... strange.';
    } else {
      textString = 'You are so bad.';
    }
    return textString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            printPhrase,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton.icon(
            onPressed: resetQuiz,
            icon: Icon(Icons.keyboard_return),
            label: Text(
              'Restart quiz!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
