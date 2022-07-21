import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp()); //passa uma instancia da aplicacao

class _PerguntaAppState extends State<PerguntaApp> {
  //toda a lógica é movida para a classe que extende o State
  //a classe Stateful será apenas o widget, que quando for inicializado, vai chamar o método createState
  var _perguntaSelecionada = 0;
  
  void _responder() {
    print('Pergunta respondida!');
    setState(() => _perguntaSelecionada++); //monitora as mudanças de estado
  }

  @override //sobreescrevendo o metodo build
  Widget build(BuildContext context) { //build da tela, vem do StatelessWidget, context pelo Flutter
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro']
      }
    ];
  
    return MaterialApp(
      //home: Text('Olá Flutter!!')
      home: Scaffold(
        appBar: AppBar( //vem do materialui
          title: Text('Perguntas') //recebe um widget, e nao um texto
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()), //nao renderiza a arvore de componentes, o flutter sabe o que mudar com o state
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
            // ElevatedButton( //antigo RaisedButton
            //   child: Text('Resposta 1'),
            //   onPressed: null, //sem funcao o botao fica nulo
            // ),
            // ElevatedButton(
            //   child: Text('Resposta 2'),
            //   onPressed: () => _responder,
            // ),
            // ElevatedButton(
            //   child: Text('Resposta 3'),
            //   onPressed: _responder,
            // ),
          ],
        ),
      ),
    );
  }
}

//class PerguntaApp extends StatelessWidget { //stateless, nao controla estado
class PerguntaApp extends StatefulWidget { //stateless, nao controla estado
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
} 