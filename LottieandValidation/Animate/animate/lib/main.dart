// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Center(child: Text('GDSC BOOKSTORE')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Text('Welcome to GDSC BOOKSTORE',style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  fontSize:25,
                )),
                
              ),
            ),
            SizedBox(height: 20,),
            Center(child: Text('Where you can get all your favourite books!',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color:Colors.deepPurple),)),
          Center(
                child: Lottie.asset(
                  'lib/Animation - 1704616898668.json',
                  width: 600,
                  height: 600,
                  fit: BoxFit.cover,
                ),
              ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom:25.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Text('View books'),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
          title: Text('GDSC BOOKSTORE'),
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            children: [
              Row(children: [
                Expanded(
                    child: SearchBar(
                        hintText: 'Looking for...',
                        padding: MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 10.0)),
                        trailing: <Widget>[
                      Tooltip(
                        message: 'Search ',
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                      )
                    ])),
                Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.tune,
                        color: Colors.blue,
                      )),
                )
              ]),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                alignment: Alignment.center,
                width: 250,
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromARGB(255, 161, 167, 201),
                        Color.fromARGB(255, 41, 61, 177),
                        Color.fromARGB(255, 161, 167, 202)
                      ],
                    )),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 52.0)),
                            Icon(Icons.pause, color: Colors.white),
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'Today a reader\n'),
                                TextSpan(text: 'Tommorrow a\n'),
                                TextSpan(
                                    text: 'Leader',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0)),
                              ],
                            )),
                            Padding(padding: EdgeInsets.only(bottom: 20.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.translate,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.bookmark,
                                  color: Colors.white,
                                ),
                                Icon(Icons.share, color: Colors.white)
                              ],
                            )
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: 'Sep 23, 2023'),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 30.0)),
                            Icon(Icons.pause, color: Colors.white)
                          ],
                        ))
                  ],
                ),
              ),
              Text(
                'Categories',
                style: TextStyle(fontSize: 20),
              ),
              Wrap(
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(216, 179, 178, 178),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(7.0))),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        child: Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.health_and_safety_outlined),
                            Text('Health')
                          ],
                        ))),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(216, 179, 178, 178),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(7.0))),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        child: Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.science_outlined),
                            Text('Science')
                          ],
                        ))),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(216, 179, 178, 178),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(7.0))),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        child: Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.history_edu_outlined),
                            Text('History')
                          ],
                        ))),
                  ),
                  Container(
                    width: 110,
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(216, 179, 178, 178),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(7.0))),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        child: Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.military_tech_outlined),
                            Text('Tehnology')
                          ],
                        ))),
                  ),
                  Container(
                    width: 110,
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(216, 179, 178, 178),
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(7.0))),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {},
                        child: Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.psychology_alt_outlined),
                            Text('philosopy')
                          ],
                        ))),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Recomendation',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.arrow_forward_outlined)
              ]),
              Container(
                  height: 185,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/image/papiyo.jpg',
                              width: 100,
                            ),
                            Text('Papillion'),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/image/yebedel.jpg',
                              width: 100,
                            ),
                            Text('Yebedel kasa'),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/image/mahlet.jpg',
                              width: 100,
                            ),
                            Text('Mahilet'),
                          ],
                        ),
                      ),
                    ],
                  )),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'New',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.arrow_forward_outlined)
              ]),
              Container(
                  height: 185,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/image/richdad.jpg',
                              width: 100,
                            ),
                            Text('Rich dad Poor Dad')
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/image/piyassa.jpg',
                              width: 150,
                              height: 150,
                            ),
                            Text('piyassa'),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                      Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/image/yetekolefebet.jpg',
                              width: 100,
                            ),
                            Text('yetekoefebet kulf'),
                          ],
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ]),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books_outlined,
              color: Colors.black,
            ),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book_online_outlined,
              color: Colors.black,
            ),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              color: Colors.black,
            ),
            label: 'Person',
          )
        ]));
  }
}
