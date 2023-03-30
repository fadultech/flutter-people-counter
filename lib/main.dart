// app com uma separação dos seus componentes
import 'package:flutter/material.dart';

// carrega o app - widget
void main() {
  runApp(MyApp());
}

// *****************************************************
// **  cria o app - widget (classe)                   **
// **  responsável por todas as configurações do app  **
// *****************************************************
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // constroi o widget a partir do MaterialApp
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),  // informa a pagina principal do app
    );
  }
}

// **************************************************************
// **  cria o widget responsável pela página principal do app  **
// **************************************************************
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // o container não permite uma configuração mais detalhada
    return Container(
      color: Colors.indigo,
      alignment: Alignment.center,
      child: const Text('Olá Flutter!'),
    );
  }
}
