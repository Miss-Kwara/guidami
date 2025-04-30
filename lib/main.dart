import 'package:flutter/material.dart';
import 'package:guidami/routes/app_routes.dart';
import 'package:guidami/screens/auth/login_screen.dart';
import 'package:guidami/screens/onboarding/role_selection_screen.dart';
import 'package:guidami/screens/auth/dashboard/mentor_dashboard.dart';
import 'package:guidami/screens/auth/dashboard/mentee_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guidami',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => const LoginScreen(),
        AppRoutes.roleSelection: (context) => const RoleSelectionScreen(),
        AppRoutes.mentorDashboard: (context) => const MentorDashboard(),
        AppRoutes.menteeDashboard: (context) => const MenteeDashboard(),
      },
    );
  }
}
