// app com uma separação dos seus componentes
// ignore_for_file: prefer_const_constructors

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

  void decrement() {
    print('Alguem saiu');
  }

  void increment() {
    print('Alguem entrou');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        // extendendo a coluna na vertical
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pode entrar!',
            // estilizando o texto
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          // widget invisivel - altura
          // outra forma - inserir texto no Padding
          SizedBox(height: 32),
          Text(
            '0',
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          // widget invisivel - altura
          SizedBox(height: 32),
          Row(
            // extendendo a linha na horizontal
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                // chamando a função
                onPressed: decrement,
                // estilizando o botão
                style: TextButton.styleFrom(
                  // cor do botão
                    backgroundColor: Colors.white,
                    // dimensões
                    // padding: EdgeInsets.all(32),
                    // outra forma:
                    fixedSize: const Size(100, 100),
                    // efeito degradê
                    primary: Colors.black,
                    // borda do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    )),
                child: Text(
                  'Saiu',
                  // estilizando o texto
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              // widget invisivel - largura
              SizedBox(width: 32),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  'Entrou',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
