import 'package:flutter/material.dart';
import 'auth/auth_state.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';

class SafeTillApp extends StatelessWidget {
  const SafeTillApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = AuthState();

    return MaterialApp(
      title: 'SafeTill',
      routes: {
        "/login": (_) => const LoginScreen(),
        "/home": (_) => const Scaffold(
              body: Center(child: Text("Home (Coming Soon)")),
            ),
      },
      home: SplashScreen(authState: authState),
    );
  }
}