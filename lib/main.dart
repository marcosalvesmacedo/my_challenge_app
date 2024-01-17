import 'package:flutter/material.dart';
import 'package:my_challenge_app/features/auth/presentation/auth.dart';
import 'package:my_challenge_app/features/auth/presentation/remember.dart';

void main() {
  runApp(const MyChallengeApp());
}

class MyChallengeApp extends StatelessWidget {
  const MyChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Challenge App',
      home: Auth(title: 'My Challenge App'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Remember(),
      debugShowCheckedModeBanner: false,
    );
  }
}
