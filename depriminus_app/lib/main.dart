// ignore_for_file: unused_import, prefer_const_constructors
import 'package:depriminus_app/pages/home.dart';
import 'package:depriminus_app/pages/journal.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserHome(),
    );
  }
}

final List<Widget> pages = [
  UserHome(),
  UserJournal(),
];

class Navbar extends StatelessWidget {
  const Navbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade200,
            gap: 5,
            padding: EdgeInsets.all(15),
            // onTabChange: _navigateBottomBar,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.message,
                text: 'Journal',
              ),
              GButton(
                icon: Icons.chat_bubble_outline,
                text: 'Chat',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
