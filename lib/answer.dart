import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;
  Answer(this.answerQuestion, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[400],
        onPressed: answerQuestion,
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }
}
