// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:projeto_final/contact_page.dart';
import 'package:projeto_final/extra_one_page.dart';
import 'package:projeto_final/extra_two_page.dart';
import 'package:projeto_final/fuel_page.dart';
import 'package:projeto_final/login_page.dart';
import 'package:projeto_final/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IFPI App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Remover o texto "Debug"
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/main': (context) => MainScreen(),
        '/contacts': (context) => ContactsScreen(),
        '/fuel': (context) => FuelScreen(),
        '/extra1': (context) => ExtraOneScreen(),
        '/extra2': (context) => ExtraTwoScreen(),
      },
    );
  }
}
