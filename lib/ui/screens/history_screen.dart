import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../../core/providers/workout_provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("History")),
      body: Consumer<WorkoutProvider>(
        builder: (context, provider, child) {
          final workouts = provider.workouts;
          if (workouts.isEmpty) {
            return const Center(child: Text("No history yet."));
          }
          final reversedWorkouts = workouts.reversed.toList();
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: reversedWorkouts.length,
            itemBuilder: (context, index) {
              final workout = reversedWorkouts[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: const Icon(Icons.check, color: Colors.white),
                  ),
                  title: Text(workout.name),
                  subtitle: Text('${DateFormat.yMMMd().format(workout.date)} • ${workout.durationMinutes} mins'),
                  trailing: const Icon(Icons.chevron_right),
                ),
              );
            },
          );
        },
      ),
    );
  }
}