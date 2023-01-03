// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, must_be_immutable, unused_local_variable

import 'package:depriminus_app/model/note.dart';
import 'package:depriminus_app/pages/notes_page.dart';
import 'package:flutter/material.dart';
import 'package:depriminus_app/widgets/emojis.dart';
import 'package:google_fonts/google_fonts.dart';

String textHolder = 'Exercises';
String mainContent = 'Please select a mood from above';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var background = Color.fromARGB(255, 43, 25, 147);
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
                      'Hello!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Settings Icon
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 39, 17, 164),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(5),
                      child: IconButton(
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () {
                          setState(() {
                            showSettings(context);
                          });
                        },
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
                      q: () {
                        setState(() {
                          textHolder = 'Bad Day - Suggestions';
                          mainContent =
                              'Meditation: Gets you more control over your thoughts. \n \n Listen to Music: Helps to elevate your mood.';
                        });
                      },
                    ),

                    // **FUTURE**

                    // // Meh
                    // Emojis(
                    //   icon:Image.asset(''),
                    //   emojiName: 'Meh',
                    //   q: () {
                    //     setState(() {
                    //       textHolder = 'Meh Day - Suggestions';
                    //       mainContent = 'Test';
                    //     }
                    //     );
                    //   },
                    // ),

                    // fine
                    Emojis(
                      icon: Image.asset('images/confused.png'),
                      emojiName: 'Fine',
                      q: () {
                        setState(() {
                          textHolder = 'Fine Day - Suggestions';
                          mainContent =
                              'Yoga: Builds endurance and improves concentration. \n \n Journaling: Helps to release some stress and feelings.';
                        });
                      },
                    ),
                    // good
                    Emojis(
                      icon: Image.asset('images/smile.png'),
                      emojiName: 'Good',
                      q: () {
                        setState(() {
                          textHolder = 'Good Day - Suggestions';
                          mainContent =
                              'Sketching: Helps to release feelings. \n \n Stretching: Improves flexibility and helps with other exercises.';
                        });
                      },
                    ),
                    // awesome
                    Emojis(
                      icon: Image.asset('images/party.png'),
                      emojiName: 'Awesome',
                      q: () {
                        setState(() {
                          textHolder = 'Awesome Day - Suggestion';
                          mainContent = 'Have a nice day!';
                        });
                      },
                    ),
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
                          textHolder,
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

                    // expanded area
                    Expanded(
                      child: Center(
                        child: Text(
                          mainContent,
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // void _onItemTapped(int index) {
    //   setState(() {
    //     _selectedIndex;
    //   });
    // }

    // int pageIndex = 0;

    // const List<Widget> _pages = <Widget>[
    //   HomePage(),
    //   NotesPage(),
    // ];

    return Scaffold(
      backgroundColor: background,
      body: body1,
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.open_in_new_rounded),
      //       label: 'Open Dialog',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),
    );
  }
}

showSettings(context) {
  showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: const Text('Settings'),
        content: const Text('Coming Soon!'),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
