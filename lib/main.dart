import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('Flutter Widgets'),
          leading: Icon(
            Icons.menu,
          ),
        ),
        body: Column(
          children: [
            // TEXT
            Container(
                padding: EdgeInsets.all(50),
                child: const Text(
                  "Let's Play Around With Some Flutter Widgets",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: "Cinzel",
                  ),
                )),

            // IMAGE
            Center(
              child: Container(
                height: 300.0,
                width: 500.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  'images/Lake.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // ICONS
            Container(
              height: 60.0,
              width: 300.0,
              margin: EdgeInsets.fromLTRB(0, 23, 0, 0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 35,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 35,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 35,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
