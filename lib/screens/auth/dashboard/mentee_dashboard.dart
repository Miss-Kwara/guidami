import 'package:flutter/material.dart';

class MenteeDashboard extends StatelessWidget {
  const MenteeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentee Dashboard'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            const Text(
              'Welcome, Mentee!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 20),

            // View Mentor Info
            Card(
              child: ListTile(
                leading: const Icon(Icons.person, color: Colors.purple),
                title: const Text('Your Mentor'),
                subtitle: const Text('View mentor details'),
                onTap: () {
                  // Navigate to mentor details
                },
              ),
            ),

            // Join/View Group
            Card(
              child: ListTile(
                leading: const Icon(Icons.group, color: Colors.purple),
                title: const Text('Your Group'),
                subtitle: const Text('Join or view your mentee group'),
                onTap: () {
                  // Navigate to group screen
                },
              ),
            ),

            // Book a Session
            Card(
              child: ListTile(
                leading: const Icon(Icons.calendar_month, color: Colors.purple),
                title: const Text('Book a Session'),
                subtitle: const Text('Schedule a time with your mentor'),
                onTap: () {
                  // Navigate to booking screen
                },
              ),
            ),

            // Chat with Mentor
            Card(
              child: ListTile(
                leading: const Icon(Icons.chat, color: Colors.purple),
                title: const Text('Chat with Mentor'),
                subtitle: const Text('Start a conversation'),
                onTap: () {
                  // Navigate to chat screen
                },
              ),
            ),

            // View Progress / Sessions
            Card(
              child: ListTile(
                leading: const Icon(Icons.bar_chart, color: Colors.purple),
                title: const Text('View Progress'),
                subtitle: const Text('Track your mentorship journey'),
                onTap: () {
                  // Navigate to progress screen
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.purple.shade50,
    );
  }
}