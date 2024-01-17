import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key, required this.title});
  final String title;

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'My Challenge App',
              ),
              Text('Challenge App',
                  style: Theme.of(context).textTheme.headlineMedium)
            ],
          ),
        ),
      ),
    );
  }
}
