import 'exercise.dart';

class WorkoutSet {
  final double weight;
  final int reps;

  WorkoutSet({required this.weight, required this.reps});
}

class WorkoutExercise {
  final Exercise exercise;
  final List<WorkoutSet> sets;

  WorkoutExercise({required this.exercise, required this.sets});
}

class Workout {
  final String id;
  final String name;
  final DateTime date;
  final int durationMinutes;
  final List<WorkoutExercise> exercises;

  Workout({
    required this.id,
    required this.name,
    required this.date,
    required this.durationMinutes,
    required this.exercises,
  });
}
