import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// Flutter apps are just a tree of Widgets.They are the building blocks of any Flutter application.
// Widget is a special type of object.

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); // Short hand notation for function with one expression.

// This widget could be rebuilt whereas the state could be persistent.
// State is a generic type.
// setState forces to re-run build method
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
  var questionSet = [
    {
      'questionText': "What's your favorite color?",
      'answers': ["Black", "Blue", "Red", "Orange"],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ["Zebra", "Lion", "Fox", "Dog"],
    },
    {
      'questionText': "What's your favorite food?",
      'answers': ["Dosa", "Idli", "Vada", "Pongal"],
    },
  ];
  void _answerQuestion() {
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
        body: Column(
          children: <Widget>[
            Question(
              questionSet[_questionIndex]['questionText'] as String,
            ), // or questionSet.elementAt(index).
            ...(questionSet[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
