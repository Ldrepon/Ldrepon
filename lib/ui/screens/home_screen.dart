import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../../core/providers/workout_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          const Text(
            "Dashboard",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            "Recent Activity",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Consumer<WorkoutProvider>(
            builder: (context, provider, child) {
              final workouts = provider.workouts;
              if (workouts.isEmpty) {
                return const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: Text("No workouts yet. Start one now!")),
                  ),
                );
              }
              // Show last 3 workouts
              final recentWorkouts = workouts.reversed.take(3).toList();
              return Column(
                children: recentWorkouts.map((workout) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.directions_run, color: Theme.of(context).primaryColor),
                      ),
                      title: Text(workout.name),
                      subtitle: Text('${DateFormat.yMMMd().format(workout.date)} • ${workout.durationMinutes} mins'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  );
                }).toList(),
              );
            },
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                context.push('/workout/new');
              },
              icon: const Icon(Icons.add),
              label: const Text("Start New Workout"),
            ),
          ),
        ],
      ),
    );
  }
}
