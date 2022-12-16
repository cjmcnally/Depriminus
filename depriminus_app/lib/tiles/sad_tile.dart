// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:depriminus_app/widgets/exercise_info.dart';

class SadTile extends StatefulWidget {
  const SadTile({super.key});

  @override
  State<SadTile> createState() => _SadTileState();
}

class _SadTileState extends State<SadTile> {
  bool _isSadVisible = false;

  void showSTile() {
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
