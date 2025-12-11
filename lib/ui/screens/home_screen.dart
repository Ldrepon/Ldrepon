import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // No Scaffold here, handled by MainWrapper
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(height: MediaQuery.of(context).padding.top), // Safe area shim
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
          Card(
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor.withValues(alpha: 0.2),
                                    borderRadius: BorderRadius.circular(8),
                                  ),                child: Icon(Icons.directions_run, color: Theme.of(context).primaryColor),
              ),
              title: const Text("Upper Body Power"),
              subtitle: const Text("Yesterday • 45 mins"),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Start New Workout"),
            ),
          ),
        ],
      ),
    );
  }
}