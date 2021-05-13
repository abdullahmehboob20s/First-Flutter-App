import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppState();
  }
}

class _AppState extends State<App> {
  var _questionIndex = 0;
  final questions = [
    {
      "questionText": "Who Is The Prime Minister Of Pakistan",
      "answers": ["Imran Khan", "Abdullah Mehboob", "Maryam Nawaz", "Nawaz Shareef"]
    },
    {
      "questionText": "What Is The Color Of Banana",
      "answers": ["yellow", "red", "green", "black"]
    },
    {
      "questionText": "Who Is The Founder Of Pakistan",
      "answers": [
        "Abdullah Mehboob",
        "Imran Khan",
        "Sir Sayed Ahmed Khan",
        "Quaid"
      ]
    },
    {
      "questionText": "Who Created Flutter",
      "answers": [
        "Facebook",
        "Firebase",
        "Google",
        "Youtube"
      ]
    },
  ];

  void _answerQuestion() {
    setState(() => _questionIndex = _questionIndex + 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Abdullah Mehboob",
          ),
          backgroundColor: Colors.green,
        ),
        body: _questionIndex == questions.length  ? Center(
          child:  RaisedButton(
            color: Colors.green,
            textColor: Colors.white,
                child: Text("You Have Don It !Go Back"),
                onPressed: () => setState(() => _questionIndex = 0),
              ),
        ) :
         Container(
          padding: EdgeInsets.all(30),  
          child : Column(
          children: [
            Question(
              questions[_questionIndex]["questionText"],
            ),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text("Reset"),
                color: Colors.red.shade200,
                // padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                textColor: Colors.white,
                onPressed: () => setState(() {
                  _questionIndex = 0;
                }),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
