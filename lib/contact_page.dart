import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo_ifpi.png', // Caminho da imagem do IFPI
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),
            Text('Página de Contatos'),
          ],
        ),
      ),
    );
  }
}