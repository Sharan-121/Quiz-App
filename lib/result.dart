import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int _result;

  Result(this._result);

  String get resultPhrase {
    String resultText;

    if (_result > 20) {
      resultText = "You are awesome";
    } else {
      resultText = "You are unique";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 25,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
