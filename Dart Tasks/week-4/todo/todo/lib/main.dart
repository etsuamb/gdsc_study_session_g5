// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Center(child: Container(
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
          child: Text('Todo Tasks',style: TextStyle(
            color: Colors.black,
          ),),
        )),
      )
    ));
  }
}
