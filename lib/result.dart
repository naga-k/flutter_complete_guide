import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  final VoidCallback? resetQuiz;

  const Result({Key? key, required this.totalScore,required this.resetQuiz}) : super(key: key);

  String get getResult {
    var resultText = "You Did it!";
    if(totalScore <= 10){
      resultText =  "You are awesome";
    } else if(totalScore<=16){
      resultText = "pretty cool";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(getResult),
          TextButton(
              onPressed: resetQuiz,
              child: Text('Restart Quiz'),)
          ,],),
    );
  }
}

