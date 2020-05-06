import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _questions = const [
    {
      'question': '1. What\'s your favorite color?',
      'answer': [
        {'text': 'A. Black', 'score': 10},
        {'text': 'B. Red', 'score': 5},
        {'text': 'C. Green', 'score': 3},
        {'text': 'D. White', 'score': 1},
      ],
    },
    {
      'question': '2. What\'s your favorite animal?',
      'answer': [
        {'text': 'A. Snake', 'score': 10},
        {'text': 'B. Rabbit', 'score': 5},
        {'text': 'C. Elephant', 'score': 3},
        {'text': 'D. Cat', 'score': 1},
      ],
    },
    {
      'question': '3. Who\'s your favorite instructor?',
      'answer': [
        {'text': 'A. Max', 'score': 10},
        {'text': 'B. Ninja', 'score': 5},
        {'text': 'C. Zack', 'score': 3},
        {'text': 'D. Alex', 'score': 1},
      ],
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    // if (_questionIndex < _questions.length) {
    //   print('There are more questions. Let\'s try.');
    // } else {
    //   print('There is no more questions.');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Personality Test',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20.0),
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
        child: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
