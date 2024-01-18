import 'package:flutter/material.dart';
import 'package:my_challenge_app/features/auth/presentation/auth.dart';
import 'package:my_challenge_app/features/auth/presentation/remember.dart';
import 'package:my_challenge_app/utils/app_routes.dart';

void main() {
  runApp(const MyChallengeApp());
}

class MyChallengeApp extends StatelessWidget {
  const MyChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Challenge App',
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.auth: (ctx) => const Auth(title: 'Login - Challenge'),
        AppRoutes.remember: (ctx) => const Remember(),
      },
    );
  }
}
