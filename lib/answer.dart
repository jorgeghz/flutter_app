import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final Function selectHandler;
  String answerText;

  Answer(this.selectHandler, this.answerText){
    print(this.selectHandler);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: selectHandler,
      ),
    );
  }

}