import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import 'quiz.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score){
      _questionIndex += 1;
      setState(() {});

      _totalScore += score;
    //print(questionIndex);

  }

  void _resetQuiz(){
    _questionIndex = 0;
    _totalScore = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context){

    var _questions = [
      {'questionText':'what\'s your favourite color?',
        'answers' : [
          {'text' : 'Red' ,'score' : 5},
          {'text' : 'Blue' ,'score' : 10},
          {'text' : 'Green' ,'score' : 8}],
      },
      {'questionText': 'what\'s your favourite animal?',
        'answers' : [
          {'text' : 'Panda' ,'score' : 5},
          {'text' : 'Monkey' ,'score' : 10},
          {'text' : 'Cheetah' ,'score' : 8}],
      },
    ];

    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: const Text('My First App'),),
        body: _questionIndex < _questions.length ?
        Quiz(answerQuestion: _answerQuestion,
            questions: _questions,
            questionIndex: _questionIndex)
            :
            Result(totalScore: _totalScore, resetQuiz: _resetQuiz,)
      ),
    );
  }
}