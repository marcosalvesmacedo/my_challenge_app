import 'package:flutter/material.dart';
import 'package:my_challenge_app/src/utils/app_routes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Removendo o AppBar
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Adicionar Cartão'),
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.addCard);
            },
          ),
          ListTile(
            title: const Text('Verificar Dados da Conta'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Notificações'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Privacidade'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Idioma'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Sobre'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
