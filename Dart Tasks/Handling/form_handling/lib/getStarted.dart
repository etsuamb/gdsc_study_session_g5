// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:form_handling/todo_list.dart';

void main() {
  runApp(Drawing());
}

class Drawing extends StatelessWidget {
  const Drawing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateTodoListPage(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TodoListPage()),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Center(
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.red.withOpacity(0.5),
                      BlendMode.srcOver,
                    ),
                    child: Image.asset(
                      'lib/drawer.jpg',
                      height: 600,
                      width: 300,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
               FloatingActionButton.extended(
                onPressed: () => navigateTodoListPage(context),
                label: Text('Get Started'),
                backgroundColor: Colors.deepPurple,
                hoverColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
