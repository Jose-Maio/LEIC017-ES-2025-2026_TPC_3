import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GreetingScreen(),
    );
  }
}

const String greetingPrefix = 'Hello';

class GreetingScreen extends StatelessWidget {
  final String name;
  const GreetingScreen({super.key, this.name = 'José'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4B6CB7), Color(0xFF182848)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 28),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '$greetingPrefix $name',
                    style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E1E2C),
                    ),
                  ),
                  const SizedBox(height: 8),
               
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
