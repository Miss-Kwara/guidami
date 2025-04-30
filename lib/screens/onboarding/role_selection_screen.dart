import 'package:flutter/material.dart';
import 'package:guidami/screens/auth/dashboard/mentor_dashboard.dart';
import 'package:guidami/screens/auth/dashboard/mentee_dashboard.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        title: const Text('Select Your Role'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Make content center vertically
            children: <Widget>[
              Text(
                'Welcome to Guidami!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple.shade900,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Choose your role to continue:',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.purple.shade600,
                ),
              ),
              const SizedBox(height: 40),
              
              // Row of Buttons in Boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Mentor Box
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to Mentor Dashboard after login
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MentorDashboard(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      ),
                      child: const Text(
                        'I am a Mentor',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),

                  // Mentee Box (You can similarly link to a mentee dashboard later)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to Mentee Dashboard
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MenteeDashboard(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      ),
                      child: const Text(
                        'I am a Mentee',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
