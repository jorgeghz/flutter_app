import 'package:flutter/material.dart';
import 'package:jorgegflutterapp/question.dart';
import 'package:jorgegflutterapp/answer.dart';
import 'package:jorgegflutterapp/quiz.dart';
import 'package:jorgegflutterapp/result.dart';

void main() => runApp(FlutterApp());

class FlutterApp extends StatefulWidget {



  @override
  State<StatefulWidget> createState() {
    return _FlutterAppState();
  }
}

class _FlutterAppState extends State<FlutterApp>{
  var _questionIndex=0;

  static const _questions=[
    {
      'questionText':'What Is Your Favorite Color?',
      'answers':['Blue','Red','Yellow','Orange']
    },
    {
      'questionText':'What Is Your Favorite Pet?',
      'answers':['Cats','Rabbits','Dogs','Ducks']
    },
    {
      'questionText':'What Is Your Favorite Car Brand?',
      'answers':['VW','Toyota','BMW','Tesla']
    }
  ];

  @override
  Widget build(BuildContext context) {

   return MaterialApp(home: Scaffold(
     appBar: AppBar(
         title: Text("Ahorita Vemos Que Pedo",textAlign: TextAlign.center,),

         backgroundColor: Colors.lightGreen
     ),
     body: _questionIndex < _questions.length
         ? Quiz(answerQuestion: this._answerQuestion, questionIndex: this._questionIndex, questions: _questions,)
          : Result(_reset)

   ));
  }

  void _reset(){
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answerQuestion(){
    setState(() {
      _questionIndex=_questionIndex+1;

    });

    if(_questionIndex < _questions.length-1){

      print(_questionIndex);
    }
    else {
      print('There are no more questions');

    }



  }



}