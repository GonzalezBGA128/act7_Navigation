import 'package:flutter/material.dart';
import 'package:gonzalez0363/paginas.dart/imagenesAutomaticas.dart';

void main() {
  runApp(const MyApp0363());
}

class MyApp0363 extends StatelessWidget {
  const MyApp0363({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MiImagenSlide(),
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
