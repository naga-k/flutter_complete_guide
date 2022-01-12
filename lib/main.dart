import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

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

  void _answerQuestion(){
    if(_questionIndex<1) {
      _questionIndex += 1;
    } else {
      _questionIndex = 0;
    }
    //print(questionIndex);
    setState(() {});
  }

  @override
  Widget build(BuildContext context){

    var questions = [
      {'questionText':'what\'s your favourite color?',
        'answers' : ['Red','Blue','Green'],
      },
      {'questionText': 'what\'s your favourite animal?',
        'answers' : ['Panda','Monkey','Cheetah'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: const Text('My First App'),),
        body: Column(
          children: [
            Question(
                questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answer(ans: answer , selectHandler: _answerQuestion);
            }).toList(),
          ],
        )
      ),
    );
  }
}