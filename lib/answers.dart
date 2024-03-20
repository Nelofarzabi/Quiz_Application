import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQustion;
  Answer(this.answerQustion);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  ElevatedButton(
              onPressed: answerQustion,
              child: Text('Answer 1'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue
              )
            ),
    );
  }
}