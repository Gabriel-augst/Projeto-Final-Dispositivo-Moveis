import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App de Contatos'),
        backgroundColor: Colors.orange, // Defina a cor desejada para a AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // Espaçamento lateral
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                'assets/images/logo_ifpi.png', // Caminho da imagem do IFPI
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/contacts');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        primary: Colors.orange,
                      ),
                      child: Text('Contatos'),
                    ),
                  ),
                  SizedBox(width: 20), // Espaçamento horizontal
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fuel');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        primary: Colors.orange,
                      ),
                      child: Text('Abastecer'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Espaçamento vertical
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/extra1');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        primary: Colors.orange,
                      ),
                      child: Text('Extra 1'),
                    ),
                  ),
                  SizedBox(width: 20), // Espaçamento horizontal
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/extra2');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        primary: Colors.orange,
                      ),
                      child: Text('Extra 2'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Espaçamento inferior
          ],
        ),
      ),
    );
  }
}
