import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TruckON',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TruckON'),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}