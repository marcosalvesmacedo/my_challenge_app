import 'package:flutter/material.dart';
import 'package:my_challenge_app/src/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: onTap as void Function()?,
    );
  }

  Future<void> _showExitConfirmationDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmar saída'),
          content: const Text('Tem certeza de que deseja sair?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF027353),
              ),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(AppRoutes.auth);
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF027353),
              ),
              child: const Text('Sim'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: const Color(0xFF027353),
            alignment: Alignment.bottomRight,
            child: const Text(
              'Conta Challenge',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _createItem(Icons.call, 'Ligue em nosso SAC', () {
            // Adicione a lógica desejada para este item
          }),
          _createItem(
            Icons.exit_to_app_outlined,
            'Sair',
            () {
              _showExitConfirmationDialog(context);
            },
          ),
        ],
      ),
    );
  }
}
