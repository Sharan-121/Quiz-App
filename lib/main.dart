import 'package:flutter/material.dart';
import './quiz.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); // Short hand notation for function with one expression.

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// Private Class
class _MyAppState extends State<MyApp> {
  // const - compile time constant.
  // final - run time constant.
  static const questionSet = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {"text": "Black", "score": 3},
        {"text": "Blue", "score": 5},
        {"text": "Orange", "score": 7},
        {"text": "Red", "score": 10},
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {"text": "Tiger", "score": 3},
        {"text": "Lion", "score": 5},
        {"text": "Fox", "score": 7},
        {"text": "Panda", "score": 10},
      ],
    },
    {
      'questionText': "What's your favorite destination?",
      'answers': [
        {"text": "Paris", "score": 3},
        {"text": "Amsterdam", "score": 5},
        {"text": "United States", "score": 7},
        {"text": "Canada", "score": 10},
      ],
    },
  ];
  var _totalScore = 0;
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
          backgroundColor: Colors.amber[800],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < questionSet.length
              ? Quiz(questionSet, answerQuestion, _questionIndex)
              : Result(_totalScore, _resetQuiz),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
