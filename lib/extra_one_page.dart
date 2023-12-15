import 'package:flutter/material.dart';

class ExtraOneScreen extends StatelessWidget {
  const ExtraOneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extra 1'),
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
            Text('Página Extra 1'),
          ],
        ),
      ),
    );
  }
}
