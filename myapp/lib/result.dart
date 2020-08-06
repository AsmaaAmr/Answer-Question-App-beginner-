import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultphrase {
    var resultText = 'you did it';
    if (resultScore <= 8) {
      resultText = 'you are awesomr and innocent';
    } else if (resultScore <= 16) {
      resultText = 'woooow';
    } else if (resultScore <= 12) {
      resultText = 'pretty Likeable!';
    } else {
      resultText = 'You are so bad duddy !!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphrase,
            style: TextStyle(fontSize: 35.5, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
