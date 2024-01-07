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
        title: Center(child: Text('Cosmos Book')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'Welcome to Space Exploraion Books',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Where You learn everthing about Space!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: Lottie.asset(
                'lib/Animation - 1704623756659.json',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 75,),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Text('Enter'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'lib/cosmos.jpg',
                  width: double.infinity,
                  height: 450,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 125.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 150.0),
                        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
                            
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:25),
                        child: Container(
                          width: 200,
                          height: 265,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2),
                            child: Image.asset(
                              'lib/cosmos.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 150),
                        child: Icon(Icons.more_vert, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 160,
              color: const Color.fromARGB(255, 244, 239, 239),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Cosmos', style: TextStyle(fontSize: 20)),
                  Text('Book By Carl Sagan'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star_border_outlined),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.all(10),
                            textStyle: const TextStyle(fontSize: 14),
                          ),
                          onPressed: () {},
                          child: Text('Free'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 70,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.all(10),
                            textStyle: const TextStyle(fontSize: 14),
                          ),
                          onPressed: () {},
                          child: Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 70,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.all(10),
                            textStyle: const TextStyle(fontSize: 14),
                          ),
                          onPressed: () {},
                          child: Icon(Icons.share),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Container(
                      width: 10,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Book Information',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Text(
                  'Cosmos: A Personal Voyage," which aired in 1980.'
                  'The series is considered a landmark in science communication'
                  'and has been followed by subsequent adaptations,'
                  'including "Cosmos: A Spacetime Odyssey" hosted by Neil deGrasse Tyson.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Container(
                      width: 10,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('About Author',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Text(
                  'Cosmos: A Personal Voyage," which aired in 1980.The series is considered a landmark in science communication and has been followed by subsequent adaptations, including "Cosmos: A Spacetime Odyssey" hosted by Neil deGrasse Tyson.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('User Review',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            UserReview(
              userName: 'Etsub',
              comment: 'This is an amazing book!',
              date: 'Oct 2023',
              userAvatarPath: 'lib/cosmos.jpg',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Related Books',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  RelatedBookCard(
                      imagePath: 'lib/borncrime.jpg',
                      bookTitle: 'Born a Crime'),
                  RelatedBookCard(
                      imagePath: 'lib/evolution.jpg', bookTitle: 'Evolution'),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: 170,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 8, 133, 236),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.all(10),
                  textStyle: const TextStyle(fontSize: 14),
                ),
                onPressed: () {},
                child: Text('Start Reading'),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go Back'),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

class UserReview extends StatelessWidget {
  final String userName;
  final String comment;
  final String date;
  final String userAvatarPath;

  const UserReview({
    Key? key,
    required this.userName,
    required this.comment,
    required this.date,
    required this.userAvatarPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(userAvatarPath),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(comment),
              Text(
                date,
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class RelatedBookCard extends StatelessWidget {
  final String imagePath;
  final String bookTitle;

  const RelatedBookCard({
    Key? key,
    required this.imagePath,
    required this.bookTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          Text(bookTitle),
        ],
      ),
    );
  }
}
