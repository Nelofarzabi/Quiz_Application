import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/questions.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatefulWidget {
  
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
int questionsIndex = 0 ;

  void answerQustion(){
    setState(() {
      questionsIndex = questionsIndex + 1 ;
    });
    
    print('button clicked');
  }

  @override
  Widget build(BuildContext context) {

    var questions = [
      {
        'questionText' : 'What is your fav color', 
        'answers' : ['black' , 'green' , 'red']
      } , 
      {
        'questionText' : 'What is your fav animal', 
        'answers' : ['poat' , 'cat' , 'horse']
      } , 
      {
        'questionText' : 'What is your fav season', 
        'answers' : ['spring' , 'summer' , 'fall']
      }
    ];

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue, // Set a custom primary color for the theme
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body:  Column(
          children:  [
            Questions(questions[questionsIndex]),
            Answer(answerQustion),
            Answer(answerQustion),
            Answer(answerQustion),
          ],
        ),
      ),
    );
  }
}
