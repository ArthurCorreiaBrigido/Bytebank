import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner de debug
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200], // Fundo da tela
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green[700], // Cor da AppBar
          foregroundColor: Colors.white,
        ),
      ),
      home: ListaTransferencias(),
    );
  }
}
