import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import './questions.dart';

//Continue on 30.
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
      "What's your favorite dessert?",
      "What's you favorite city?",
    ];
    var likesQuestions = [
      {
        'questionText': 'What is your favorite color?',
        'answers': [
          'Red',
          'Blue',
          'Green',
          'Yellow',
          'Pink',
          'Purple',
          'Orange',
          'Black',
          'White'
        ]
      },
      {
        'questionText': 'What is your favorite food?',
        'answers': [
          'Pizza',
          'Burger',
          'Sushi',
          'Tacos',
          'Pasta',
          'Steak',
          'Seafood',
          'Chinese',
          'Indian',
          'Thai'
        ]
      },
      {
        'questionText': 'What is your favorite movie genre?',
        'answers': ['Action', 'Comedy', 'Drama', 'Horror', 'Romance', 'Sci-Fi']
      },
      {
        'questionText': 'What is your favorite hobby?',
        'answers': [
          'Reading',
          'Drawing',
          'Playing music',
          'Cooking',
          'Hiking',
          'Gardening',
          'Watching TV',
          'Playing video games'
        ]
      },
      {
        'questionText': 'What is your favorite type of music?',
        'answers': [
          'Pop',
          'Rock',
          'Hip hop',
          'Jazz',
          'Classical',
          'Electronic',
          'Country',
          'R&B',
          'Reggae'
        ]
      },
      {
        'questionText': 'What is your favorite animal?',
        'answers': ['Dogs', 'Cats', 'Birds', 'Fish', 'Reptiles', 'Rodents']
      },
      {
        'questionText': 'What is your favorite sport?',
        'answers': [
          'Football',
          'Basketball',
          'Baseball',
          'Soccer',
          'Tennis',
          'Swimming'
        ]
      },
      {
        'questionText': 'What is your favorite season?',
        'answers': ['Spring', 'Summer', 'Fall', 'Winter']
      },
      {
        'questionText': 'What is your favorite type of book?',
        'answers': [
          'Mystery',
          'Thriller',
          'Romance',
          'Science fiction',
          'Biography',
          'Fantasy'
        ]
      }
    ];

    void answerQuestion() {
      print("Answered question!");

      setState(() {
        _qIndex = (_qIndex + 1) < likesQuestions.length ? (_qIndex + 1) : 0;
      });
    }

    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title Bar App"),
        ),
        body: Column(
          children: <Widget>[
            Questions(likesQuestions[_qIndex]["questionText"]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 3"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
}
