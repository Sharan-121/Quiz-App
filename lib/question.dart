import 'package:flutter/material.dart';

// By default,Text widget only allocates space depending on the length of the text.Hence to align the text we need another widget.That is where container comes into picture.

// Margin modifies the space around the container.

class Question extends StatelessWidget {
  final String questionText; // Value does not change after initializing.

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
