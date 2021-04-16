import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _clickCounter = 0;

  void onPresshandler() {
    setState(() {
      this._clickCounter++;
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
            Text("${this._clickCounter}"),
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
