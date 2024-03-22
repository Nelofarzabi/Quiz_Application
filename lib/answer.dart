import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback answerQustion;
  final String answerText ;
  const Answer(this.answerQustion , this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child:  ElevatedButton(
              onPressed: answerQustion,
              child: Text(answerText,  style: TextStyle(color: Colors.white , fontSize: 20),),
              style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              )
       ),
    );
  }
}

