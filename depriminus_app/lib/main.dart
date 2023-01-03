// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:depriminus_app/model/note.dart';
import 'package:depriminus_app/pages/home.dart';
import 'package:depriminus_app/pages/notes_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesPage(),
    );
  }
}

// class NBar extends StatefulWidget {
//   NBar({super.key});

// int pageIndex = 0;

// final pages = [
//   const HomePage(),
//   const NotesPage(),
// ];

//   @override
//   State<NBar> createState() => _NBarState();
// }

// class _NBarState extends State<NBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[pageIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book_online),
//             label: 'Journal',
//           ),
//         ],
//         currentIndex: pageIndex,
//         selectedItemColor: const Color.fromARGB(255, 43, 25, 147),
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
