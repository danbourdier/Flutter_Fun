import 'package:flutter/material.dart';
import './question_widget.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  /* This is saying we are creating an override of #createState that
    returns an instance of our state.
  */
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentQuestionIndex = 0;
  List<String> ourQuestions = [
    'Whatcha think about apples?',
    'Whatcha think about pears?',
    'Whatcha think about tomatoes?',
    'Whatcha think about pineapples?'
  ];

  void onPresshandler() {
    setState(() {
      this._currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Title"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Text("${this._currentQuestionIndex}"),
            ElevatedButton(onPressed: onPresshandler, child: Text("Choose me")),
            ElevatedButton(onPressed: onPresshandler, child: Text("Choose me")),
            ElevatedButton(onPressed: onPresshandler, child: Text("Choose me")),
            ElevatedButton(onPressed: onPresshandler, child: Text("Choose me")),
            ElevatedButton(onPressed: onPresshandler, child: Text("Choose me")),
          ],
        ),
      ),
    );
  }
}
