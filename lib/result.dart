import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _result;
  final VoidCallback resetQuiz;

  Result(this._result, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (_result < 15) {
      resultText = "You are a Innocent Person";
    } else if (_result < 25) {
      resultText = "You are a Matured Person";
    } else {
      resultText = "You are a Bold Person";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.amber[800]),
            ),
          )
        ],
      ),
    );
  }
}
