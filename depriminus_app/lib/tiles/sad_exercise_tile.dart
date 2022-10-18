// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:depriminus_app/util/exercise_tile.dart';

class SadExerciseTile extends StatelessWidget {
  const SadExerciseTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
