// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:depriminus_app/assets/emoticon_face.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

// Home Screen

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Welcome message
                      Text(
                        'Hello Colin!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Settings Icon
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  // How do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  // Mood tracker
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // bad
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: ''),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // fine
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: ''),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // good
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: ''),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Good',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // amazing
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: ''),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Amazing',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Section for daily advice
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      // exercise heading with sort icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Icon(Icons.sort_sharp),
                        ],
                      ),

                      // list view of exercises - scrollable
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
