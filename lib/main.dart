import 'package:flutter/material.dart';
import 'package:my_challenge_app/src/features/auth/presentation/remember_me.dart';

import 'src/features/auth/presentation/auth.dart';
import 'src/features/auth/presentation/register.dart';
import 'src/utils/app_routes.dart';

void main() {
  runApp(const MyChallengeApp());
}

class MyChallengeApp extends StatelessWidget {
  const MyChallengeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Challenge App',
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.auth: (ctx) => const Auth(),
        AppRoutes.register: (ctx) => const Register(),
        AppRoutes.rememberMe: (ctx) => const RememberMe(),
      },
    );
  }
}
