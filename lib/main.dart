import 'package:flutter/material.dart';

// Flutter apps are just a tree of Widgets.They are the building blocks of any Flutter application.
// Widget is a special type of object.

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); // Short hand notation for function with one expression.

class MyApp extends StatelessWidget {
  // context holds some metadata about the widget

  void answerQuestion() {
    print("Answer chosen!");
  }

  @override //decorator
  Widget build(BuildContext context) {
    // MaterialApp class does a lot of behind the work scenes to display the widgets onto the screen.
    // Home is the core widget.
    // Scaffold widget gives the app a basic design and structure.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: <Widget>[
            Text("The Question!"),
            ElevatedButton(
              onPressed:
                  answerQuestion, // not answerQuestion() coz we need a pointer to the function(name instead of result)
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Answer chosen!");
              }, //anonymous function
              child: Text("Answer 3"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 4"),
            ),
          ],
        ), // we can pass only one widget to body.
      ),
    );
  }
}
