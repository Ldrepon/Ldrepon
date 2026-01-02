import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/providers/workout_provider.dart';

class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exercises = context.watch<WorkoutProvider>().exercises;

    return Scaffold(
      appBar: AppBar(title: const Text('Exercises')),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          final exercise = exercises[index];
          return ListTile(
            title: Text(exercise.name),
            subtitle: Text('${exercise.muscleGroup} • ${exercise.category}'),
            leading: CircleAvatar(child: Text(exercise.name[0])),
            onTap: () {
              // TODO: Navigate to details or select
            },
          );
        },
      ),
    );
  }
}
