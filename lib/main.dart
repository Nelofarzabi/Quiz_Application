import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';


void main() {
  runApp( const  MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

int questionsIndex = 0 ;
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
  void answerQustion(){
    setState(() {
      questionsIndex = questionsIndex + 1 ;
    });
    if(questionsIndex < questions.length){
      print('We have more  questions');
    }
    else {
      print('you did it !');
    }
  }

  @override
  Widget build(BuildContext context) {

   

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: questionsIndex < questions.length ?  Column(
          children:  [
            Questions(questions[questionsIndex]['questionText'] as String),
            ...(questions[questionsIndex]['answers'] as List<String>).map((answer){
              return Answer(answerQustion , answer);
            }).toList(),
          ],
        ) : const Center(child: Text('You did it!' , style: TextStyle(fontSize: 30 , ),),)
      ),
    );
  }
}

