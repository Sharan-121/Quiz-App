import 'package:flutter/material.dart';
import './question.dart';

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
    "What's your favorite color?",
    "What's your favorite animal?",
  ];
  void answerQuestion() {
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
            Question(questionSet[
                _questionIndex]), // or questionSet.elementAt(index).
            ElevatedButton(
              onPressed:
                  answerQuestion, // Not answerQuestion() coz we need a pointer to the function(name instead of result).
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Answer chosen!");
              }, //Anonymous Function.
              child: Text("Answer 3"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
}
