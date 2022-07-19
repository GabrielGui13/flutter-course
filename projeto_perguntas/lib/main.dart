import 'package:flutter/material.dart';

main() => runApp(PerguntaApp()); //passa uma instancia da aplicacao

class PerguntaApp extends StatelessWidget { //stateless, nao controla estado
  void responder() {
    print('Pergunta respondida!');
  }

  @override //sobreescrevendo o metodo build
  Widget build(BuildContext context) { //build da tela, vem do StatelessWidget, context pelo Flutter
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];
  
    return MaterialApp(
      //home: Text('Olá Flutter!!')
      home: Scaffold(
        appBar: AppBar( //vem do materialui
          title: Text('Perguntas') //recebe um widget, e nao um texto
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton( //antigo RaisedButton
              child: Text('Resposta 1'),
              onPressed: null, //sem funcao o botao fica nulo
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () => print('Resposta 2 selecionada'),
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
} 