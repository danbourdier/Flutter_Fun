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

/* Below says we access State that belongs to the above subclass*/
class _MyAppState extends State<MyApp> {
  int _currentQuestionIndex = 0;
  List<String> ourQuestions = [
    'Whatcha think about apples?',
    'Whatcha think about pears?',
    'Whatcha think about tomatoes?',
    'Whatcha think about pineapples?'
  ];
  // need an algorithm to handle the boundary of traversing questions
  int questionIndexHelper(int idx) {
    return idx % ourQuestions.length;
  }

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
            title: Text("Super Fun Questionnaire"),
            backgroundColor: Colors.green,
          ),
          body: Center(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 100.0),
            child: Column(
              children: [
                QuestionWidget(ourQuestions[
                    questionIndexHelper(this._currentQuestionIndex)]),
                ElevatedButton(onPressed: onPresshandler, child: Text("Yes")),
                ElevatedButton(onPressed: onPresshandler, child: Text("No")),
                ElevatedButton(onPressed: onPresshandler, child: Text("Maybe")),
                ElevatedButton(
                    onPressed: onPresshandler, child: Text("I'm Conflicted!")),
                ElevatedButton(
                    onPressed: onPresshandler, child: Text("All The Above!")),
              ],
            ),
          ))),
    );
  }
}
