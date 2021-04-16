import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void onPresshandler() {
    print("Choice Selected");
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
            Text("Question Goes Here"),
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
