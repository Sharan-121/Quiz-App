import 'package:flutter/material.dart';
import './quiz.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

// Flutter apps are just a tree of Widgets.They are the building blocks of any Flutter application.
// Widget is a special type of object.

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); // Short hand notation for function with one expression.

// This widget could be rebuilt whereas the state could be persistent.
// State is a generic type.
// setState forces to re-run build method.
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// Private Class
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0; // To dynamically change questions.

  // const - compile time constant.
  // final - run time constant.
  static const questionSet = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {"text": "Black", "score": 7},
        {"text": "Blue", "score": 5},
        {"text": "Orange", "score": 10},
        {"text": "Red", "score": 2},
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {"text": "Tiger", "score": 7},
        {"text": "Lion", "score": 8},
        {"text": "Fox", "score": 10},
        {"text": "Panda", "score": 5},
      ],
    },
    {
      'questionText': "What's your favorite food?",
      'answers': [
        {"text": "Idli", "score": 1},
        {"text": "Vada", "score": 7},
        {"text": "Dosa", "score": 10},
        {"text": "Pongal", "score": 2},
      ],
    },
  ];
  var _totalScore = 0;
  void answerQuestion() {
    // _totalScore += int.parse(score);
    setState(() {
      _questionIndex += 1;
    });
  }

  // Context holds some metadata about the widget.
  @override
  Widget build(BuildContext context) {
    // MaterialApp class does a lot of behind the work scenes to display the widgets onto the screen.
    // Home is the core widget.
    // Scaffold widget gives the app a basic design and structure.
    // We can pass only one widget to body.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < questionSet.length
            ? Quiz(questionSet, answerQuestion, _questionIndex)
            : Result(_totalScore),
      ),
    );
  }
}
