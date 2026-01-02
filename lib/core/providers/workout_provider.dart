import 'package:flutter/foundation.dart';
import '../models/workout.dart';
import '../models/exercise.dart';

class WorkoutProvider extends ChangeNotifier {
  final List<Workout> _workouts = [
    // Add some dummy data
    Workout(
      id: '1',
      name: 'Upper Body Power',
      date: DateTime.now().subtract(const Duration(days: 1)),
      durationMinutes: 45,
      exercises: [],
    ),
  ];
  
  final List<Exercise> _exercises = [
    Exercise(id: '1', name: 'Bench Press', category: 'Strength', muscleGroup: 'Chest'),
    Exercise(id: '2', name: 'Squat', category: 'Strength', muscleGroup: 'Legs'),
    Exercise(id: '3', name: 'Deadlift', category: 'Strength', muscleGroup: 'Back'),
    Exercise(id: '4', name: 'Running', category: 'Cardio', muscleGroup: 'Full Body'),
    Exercise(id: '5', name: 'Pull Ups', category: 'Strength', muscleGroup: 'Back'),
    Exercise(id: '6', name: 'Shoulder Press', category: 'Strength', muscleGroup: 'Shoulders'),
  ];

  List<Workout> get workouts => List.unmodifiable(_workouts);
  List<Exercise> get exercises => List.unmodifiable(_exercises);

  void addWorkout(Workout workout) {
    _workouts.add(workout);
    notifyListeners();
  }
}
