import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      print('Answer chosen!');
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What is your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text(
                'Answer 1',
              ),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text(
                'Answer 2',
              ),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text(
                'Answer 3',
              ),
              onPressed: () {
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
