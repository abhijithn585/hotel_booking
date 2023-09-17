import 'package:flutter/material.dart';
import 'package:resto/screens/screenlogin.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'restoapp',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
