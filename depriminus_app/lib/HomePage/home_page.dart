import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// Home Screen

class HomePage extends StatefulWidget {
  const HomePage(Buttons buttons, {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurple[700],
        title: Text(
          'Home',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
          child: Container(
        height: 800,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Text(
                'How are you feeling today?',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: IconButton(
      icon: const Icon(Icons.face_outlined),
      color: Colors.black,
      onPressed: () {
        print('Pressed');
      },
    ));
  }
}
