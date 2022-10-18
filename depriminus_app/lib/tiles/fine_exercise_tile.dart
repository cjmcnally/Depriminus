// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:depriminus_app/util/exercise_tile.dart';

class FineExerciseTile extends StatelessWidget {
  const FineExerciseTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExerciseTile(
          icon: Icons.favorite,
          exerciseName: 'Breathing Exercises',
          numberOfExercises: 5,
          color: Colors.orange,
        ),
        ExerciseTile(
          icon: Icons.face_outlined,
          exerciseName: 'Mental Exercises',
          numberOfExercises: 3,
          color: Colors.blueAccent,
        ),
        ExerciseTile(
          icon: Icons.star,
          exerciseName: 'Coping Skills',
          numberOfExercises: 2,
          color: Colors.pink,
        ),
      ],
    );
  }
}
