import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      margin: EdgeInsets.all(30),
      // margin: EdgeInsets.fromLTRB(10, 30, 30, 5),
      // color: Colors.red,

      child:  Text(
        questionText,
        style: TextStyle(fontSize: 20,),
        textAlign: TextAlign.center ,
      ),

    
    );
  }
}
