import 'package:flutter/material.dart';

void main() {
  runApp(MyAppppp());
}

class MyAppppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}