import 'package:flutter/material.dart';

class SafeTillApp extends StatelessWidget {
  const SafeTillApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeTill',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            'SafeTill',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}