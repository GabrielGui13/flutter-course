import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String texto; //propriedade

  Questao(this.texto); //construtor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //estrategia,
      margin: EdgeInsets.all(10), 
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 28
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}