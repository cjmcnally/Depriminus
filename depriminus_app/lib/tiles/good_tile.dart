// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:depriminus_app/widgets/exercise_info.dart';

class GoodTile extends StatelessWidget {
  const GoodTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExerciseTile(
          icon: Icons.favorite,
          exerciseName: 'Breathing Exercises',
          numberOfExercises: 3,
          color: Colors.lightGreen,
        ),
        ExerciseTile(
          icon: Icons.face_outlined,
          exerciseName: 'Mental Exercises',
          numberOfExercises: 5,
          color: Colors.blueGrey,
        ),
        ExerciseTile(
          icon: Icons.star,
          exerciseName: 'Coping Skills',
          numberOfExercises: 3,
          color: Colors.purpleAccent,
        ),
      ],
    );
  }
}
