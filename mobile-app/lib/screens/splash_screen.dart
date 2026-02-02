import 'package:flutter/material.dart';
import '../auth/auth_state.dart';

class SplashScreen extends StatefulWidget {
  final AuthState authState;

  const SplashScreen({super.key, required this.authState});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await widget.authState.checkAuth();

    if (!mounted) return;

    Navigator.pushReplacementNamed(
      context,
      widget.authState.isAuthenticated ? "/home" : "/login",
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}