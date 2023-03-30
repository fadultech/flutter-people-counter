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
      home: HomePage(), // informa a pagina principal do app
    );
  }
}

// **************************************************************
// **  criando a página do app contador de pessoas             **
// **************************************************************
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pode entrar!',
              style: TextStyle(
                // estilizando o texto
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '0',
              style: TextStyle(
                // estilizando o texto
                fontSize: 100,
                color: Colors.white,
            ),
            )
          ],
        ));
  }
}
