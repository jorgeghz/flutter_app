import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


class Result extends StatelessWidget{
  final Function resetHandler;
  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: <Widget>[
          Text(
              'We are done!',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
        ),
          FlatButton(child: Text("Restart"), onPressed: resetHandler)
      ],
      )
    );
  }

}
