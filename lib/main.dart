import 'package:flutter/material.dart';
void main() => runApp(FlutterApp());

class FlutterApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return FlutterAppState();
  }
}

class FlutterAppState extends State<FlutterApp>{
  var questionIndex=0;

  @override
  Widget build(BuildContext context) {
    var questions=[
      'What is your favorite color?',
      'What is your favorite pet'

    ];
   return MaterialApp(home: Scaffold(
     appBar: AppBar(
         title: Text("Ahorita Vemos Que Pedo"),
         backgroundColor: Colors.lightGreen
     ),
     body: Column(
       children: [
         Text(questions[questionIndex]),
         RaisedButton(
             child: Text("Es harina"),
             onPressed: answerQuestion
         ),
         RaisedButton(
             child: Text("No es harina"),
             onPressed: ()=>print('Selected 2')
         ),
         RaisedButton(
             child: Text("Otra cosa"),
             onPressed: answerQuestion
         )
       ],
     )

   ));
  }

  void answerQuestion(){
    //if(questionIndex<questions.)
    setState(() {
      questionIndex=questionIndex+1;

    });
    print(questionIndex);

  }



}