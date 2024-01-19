import 'package:flutter/material.dart';

import 'src/features/auth/presentation/auth.dart';
import 'src/features/auth/presentation/remember_me.dart';
import 'src/utils/app_routes.dart';

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
        AppRoutes.rememberMe: (ctx) => const Remember(),
      },
    );
  }
}
