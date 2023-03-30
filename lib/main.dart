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
    return const Scaffold(
      body: Column(   // incluindo uma coluna no corpo
        mainAxisAlignment: MainAxisAlignment.center,  // alinhando o eixo principal (vertical)
        children: [  // filhos da coluna - 2 textos 1 linha
          Text('Pode entrar!'),
          Text('0',)
        ],
      )
    );
  }
}
