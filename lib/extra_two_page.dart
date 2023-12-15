
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExtraTwoScreen extends StatelessWidget {
  const ExtraTwoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extra 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/foto-perfil.jpg'), // Caminho da sua foto
            ),
            SizedBox(height: 20),
            Text('Gabriel Augusto'),
          ],
        ),
      ),
    );
  }
}