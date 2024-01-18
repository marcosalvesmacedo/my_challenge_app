import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:my_challenge_app/features/auth/presentation/auth.dart';
import 'package:my_challenge_app/features/auth/presentation/remember.dart';
import 'package:my_challenge_app/utils/app_routes.dart';
=======
import 'package:my_challenge_app/src/features/auth/presentation/auth.dart';
import 'package:my_challenge_app/src/features/auth/presentation/remember.dart';
>>>>>>> 0c759171a08591172326fedfeb1a91b5fc98720c

void main() {
  runApp(const MyChallengeApp());
}

class MyChallengeApp extends StatelessWidget {
  const MyChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Challenge App',
<<<<<<< HEAD
=======
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Remember(),
>>>>>>> 0c759171a08591172326fedfeb1a91b5fc98720c
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.auth: (ctx) => const Auth(title: 'Login - Challenge'),
        AppRoutes.remember: (ctx) => const Remember(),
      },
    );
  }
}
