// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class FuelScreen extends StatefulWidget {
  const FuelScreen({super.key});
  @override
  _FuelScreenState createState() => _FuelScreenState();
}

class _FuelScreenState extends State<FuelScreen> {
  final TextEditingController _textEditingControllerGasoli = TextEditingController();
  final TextEditingController _textEditingControllerAlcool = TextEditingController();

  var resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gasolina x Alcool"),
        backgroundColor: const Color.fromARGB(255, 88, 159, 216),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  'Gasoli vs Alcool',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blue,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/fuel.jpeg',
                height: 120,
                width: 120,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Valor da gasolina',
                ),
                controller: _textEditingControllerGasoli,
                onSubmitted: (String valor) {
                  print('Valor' + _textEditingControllerGasoli.text);
                },
              ),
              SizedBox(height: 20.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Valor do álcool',
                ),
                controller: _textEditingControllerAlcool,
                onSubmitted: (String valor) {
                  print('Valor' + _textEditingControllerAlcool.text);
                },
              ),
              SizedBox(height: 50.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Bordas quadradas
                  ),
                  primary:  const Color.fromARGB(255, 88, 159, 216), // Cor de fundo desejada
                ),
                child: Text(
                  'Calcular',
                  style: TextStyle(color: Colors.white), // Altera a cor do texto para branco
                ),
                onPressed: () {
                  setState(() {
                    resultado = double.parse(_textEditingControllerAlcool.text) /
                        double.parse(_textEditingControllerGasoli.text) *
                        100;
                    print('Calcular' + resultado.toString());
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text("Resultado: $resultado"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
