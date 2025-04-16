import 'package:flutter/material.dart';

class MentorDashboard extends StatelessWidget {
  const MentorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mentor Dashboard"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome, Mentor!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 20),
            // A button or card for setting up a new mentorship
            ElevatedButton(
              onPressed: () {
                // Add your functionality here
              },
              child: const Text("Start a New Mentorship"),
            ),
            const SizedBox(height: 20),
            // A button for viewing active mentorships
            ElevatedButton(
              onPressed: () {
                // Add your functionality here
              },
              child: const Text("View Active Mentorships"),
            ),
            const SizedBox(height: 20),
            // A button for settings or profile management
            ElevatedButton(
              onPressed: () {
                // Add your functionality here
              },
              child: const Text("Profile Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
