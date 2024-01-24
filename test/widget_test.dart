import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_challenge_app/src/features/auth/presentation/auth.dart';
import 'package:my_challenge_app/src/utils/app_routes.dart';

void main() {
  testWidgets('Auth widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: const Auth(),
      routes: {
        AppRoutes.register: (context) => const Text('Remember Screen'),
      },
    ));

    expect(find.byType(Auth), findsOneWidget);
    expect(find.text('Remember Screen'), findsNothing);

    await tester.tap(find.text('Esqueci minha senha'));
    await tester.pumpAndSettle();

    expect(find.text('Remember Screen'), findsOneWidget);
    expect(find.byType(Auth), findsNothing);
  });
}
