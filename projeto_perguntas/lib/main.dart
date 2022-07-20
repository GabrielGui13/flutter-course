import 'package:flutter/material.dart';

main() => runApp(PerguntaApp()); //passa uma instancia da aplicacao

class PerguntaAppState extends State<PerguntaApp> {
  //toda a lógica é movida para a classe que extende o State
  //a classe Stateful será apenas o widget, que quando for inicializado, vai chamar o método createState
  var perguntaSelecionada = 0;
  
  void responder() {
    print('Pergunta respondida!');
    setState(() => perguntaSelecionada++); //monitora as mudanças de estado
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
            Text(perguntas[perguntaSelecionada]), //nao renderiza a arvore de componentes, o flutter sabe o que mudar com o state
            ElevatedButton( //antigo RaisedButton
              child: Text('Resposta 1'),
              onPressed: null, //sem funcao o botao fica nulo
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () => responder,
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

//class PerguntaApp extends StatelessWidget { //stateless, nao controla estado
class PerguntaApp extends StatefulWidget { //stateless, nao controla estado
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
} 