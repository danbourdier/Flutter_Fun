import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Title"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Text("Lets do something crazy"),
        ),
      ),
    );
  }
}
