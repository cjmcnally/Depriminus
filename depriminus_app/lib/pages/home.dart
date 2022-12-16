// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:depriminus_app/pages/journal.dart';
import 'package:depriminus_app/tiles/awesome_tile.dart';
import 'package:depriminus_app/tiles/fine_tile.dart';
import 'package:depriminus_app/tiles/good_tile.dart';
import 'package:flutter/material.dart';
import 'package:depriminus_app/widgets/emojis.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:depriminus_app/tiles/sad_tile.dart';

import '../widgets/exercise_info.dart';

String textHolder = 'Exercises';
String mainContent = 'Please select a mood from above';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  // void _navigateBottomBar(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  // final List<Widget> _pages = [
  //   UserHome(),
  //   UserJournal(),
  // ];

  final List<Widget> _tiles = [
    SadTile(),
    FineTile(),
    GoodTile(),
    AwesomeTile(),
  ];

  // int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var background = Colors.white30;
    // var nbar = Scaffold(
    //   body: _pages[_selectedIndex],
    //   bottomNavigationBar: BottomNavigationBar(
    //     currentIndex: _selectedIndex,
    //     onTap: _navigateBottomBar,
    //     type: BottomNavigationBarType.fixed,
    //     items: [
    //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    //       BottomNavigationBarItem(
    //           icon: Icon(Icons.book_rounded), label: 'Journal'),
    //       BottomNavigationBarItem(
    //           icon: Icon(Icons.settings), label: 'Settings'),
    //     ],
    //   ),
    // );
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
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.refresh_outlined,
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
                      q: () {
                        setState(() {
                          textHolder = 'Bad: Exercise List';
                        });
                      },
                    ),
                    // fine
                    Emojis(
                      icon: Image.asset('images/confused.png'),
                      emojiName: 'Fine',
                      q: () {
                        setState(() {
                          textHolder = 'Fine: Exercise List';
                        });
                      },
                    ),
                    // good
                    Emojis(
                      icon: Image.asset('images/smile.png'),
                      emojiName: 'Good',
                      q: () {
                        setState(() {
                          textHolder = 'Good: Exercise List';
                        });
                      },
                    ),
                    // awesome
                    Emojis(
                      icon: Image.asset('images/party.png'),
                      emojiName: 'Awesome',
                      q: () {
                        setState(() {
                          textHolder = 'Awesome: Exercise List';
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
    return Scaffold(
      backgroundColor: background,
      body: body1,
      // bottomNavigationBar: nbar,
    );
  }
}

class SadTile extends StatefulWidget {
  const SadTile({super.key});

  @override
  State<SadTile> createState() => _SadTileState();
}

class _SadTileState extends State<SadTile> {
  bool _isSadVisible = false;

  void showSadTile() {
    setState(() {
      _isSadVisible = !_isSadVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isSadVisible,
      child: ListView(
        children: [
          ExerciseTile(
            icon: Icons.favorite,
            exerciseName: 'Breathing Exercises',
            numberOfExercises: 3,
            color: Colors.lime,
          ),
          ExerciseTile(
            icon: Icons.face_outlined,
            exerciseName: 'Mental Exercises',
            numberOfExercises: 3,
            color: Colors.lightBlue,
          ),
          ExerciseTile(
            icon: Icons.star,
            exerciseName: 'Coping Skills',
            numberOfExercises: 5,
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
// showBadDialog(context) {
//   showDialog(
//     barrierDismissible: true,
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: Colors.deepPurple[200],
//         title: const Text('Exercise List'),
//         content: const Text('example text'),
//         actions: [
//           MaterialButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('OK'),
//           ),
//         ],
//       );
//     },
//   );
// }

// showFineDialog(context) {
//   showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         backgroundColor: Colors.deepPurple[300],
//         title: const Text('Fine Day Exercises'),
//         content: const Text('List of exercises'),
//         actions: [
//           MaterialButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: const Text('OK'),
//           ),
//         ],
//       );
//     },
//   );
// }

// showGoodDialog(context) {
//   showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         backgroundColor: Colors.deepPurple[300],
//         title: const Text('Good Day Exercises'),
//         content: const Text('List of exercises'),
//         actions: [
//           MaterialButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: const Text('OK'),
//           ),
//         ],
//       );
//     },
//   );
// }

// showAmazingDialog(context) {
//   showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         backgroundColor: Colors.deepPurple[300],
//         title: const Text('Amazing Day Exercises'),
//         content: const Text('List of exercises'),
//         actions: [
//           MaterialButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: const Text('OK'),
//           ),
//         ],
//       );
//     },
//   );
// }
