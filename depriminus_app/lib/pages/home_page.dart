// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:depriminus_app/util/emojis.dart';
import 'package:depriminus_app/util/exercise_tile.dart';
import 'package:depriminus_app/util/sad_exercise_tile.dart';
import 'package:flutter/material.dart';

// Home Screen
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var background = Colors.deepPurple[800];
    var body1 = SafeArea(
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
                    Emojis(
                        icon: Image.asset('images/sad.png'),
                        emojiName: 'Bad',
                        onPressed: () {
                          // show.SadExerciseTile();
                        }),
                    // fine
                    Emojis(
                        icon: Image.asset('images/confused.png'),
                        emojiName: 'Fine',
                        onPressed: () {}),
                    // good
                    Emojis(
                        icon: Image.asset('images/smile.png'),
                        emojiName: 'Good',
                        onPressed: () {}),
                    // awesome
                    Emojis(
                        icon: Image.asset('images/party.png'),
                        emojiName: 'Awesome',
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),

          // Exercise Section Box
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

              // Exercise Section
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
                        // potential icons section
                      ],
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    // list view of exercises - scrollable
                    Expanded(
                      child: SadExerciseTile(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: background,
      body: body1,
    );
  }
}
