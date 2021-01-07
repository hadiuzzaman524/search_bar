import 'package:flutter/material.dart';
import 'items.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(
       primaryColor: Colors.blue,
     ),
      home: HomePage(),
    );
  }
}
