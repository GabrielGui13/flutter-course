int soma(int a, int b) { //sem tipos, fica dynamic
  return a + b;
}

int exec(int a, int b, int Function(int, int) fn) { //mistura de parametros posicionais e nomeados
  return fn(a, b);
}

imprimirProduto(int qtd, {String? nome, double? preco}) {
  for (int i = 0; i < qtd; i++) {
    print('O produto ${nome} tem preco R\$${preco}');
  }
}

class Produto {
  String? nome;
  double? preco;

  Produto({this.nome, this.preco = 9.99}); //parametros nomeados, com valor padrao
  // Produto(this.nome, this.preco); parametros posicionais, ja sabem a posicao correta
  // Produto(String nome, double preco) {
  //   this.nome = nome;
  //   this.preco = preco;
  // }
}

main() {
  final r = soma(2, 3);
  print('O valor da soma é: $r');

  final result = exec(2, 3, (a, b) => a - b);
  print('O resultado é: $result');

  var p1 = new Produto(nome: 'Caneta', preco: 4.99); //parametros nomeados
  var p2 = new Produto(nome: 'Geladeira', preco: 1459.99);
  //p1.nome = 'Lapis';
  //p1.preco = 4.59;

  // print('O produto ${p1.nome} tem preco R\$${p1.preco}');
  // print('O produto ${p2.nome} tem preco R\$${p2.preco}');
  imprimirProduto(1 ,nome: p1.nome, preco: p1.preco);
  imprimirProduto(2 ,nome: p2.nome, preco: p2.preco);
}