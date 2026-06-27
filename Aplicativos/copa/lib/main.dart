import 'package:copa/visao/TelaInicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GaleriaSelecaoApp());
}

class GaleriaSelecaoApp extends StatelessWidget {
  const GaleriaSelecaoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Album da seleção',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 9, 174, 116),
        useMaterial3: true,
      ),  
      home: TelaInicial(),
    );
  }
}
