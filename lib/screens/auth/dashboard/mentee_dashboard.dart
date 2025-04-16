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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to your Mentee Dashboard!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Here, you can connect with your mentor, track your progress, and much more.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple, // Button color
              ),
              onPressed: () {
                // Navigate to another screen, like a chat screen, or progress tracking
                // Navigator.push(context, MaterialPageRoute(builder: (context) => SomeOtherScreen()));
              },
              child: const Text('Connect with Mentor'),
            ),
          ],
        ),
      ),
    );
  }
}
