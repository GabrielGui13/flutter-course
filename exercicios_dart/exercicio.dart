main() {
  print('Teste');

  dynamic x = 'Teste'; //can take any type
  x = 123;
  x - false;

  int a = 3;
  double b = 3.1;
  String c = 'Texto';
  bool estaChovendo = true;
  var nulo = 'String';

  print(nulo is String);

  List<String> nomes = ['Ana', 'Bia', 'Carlos'];
  nomes.add('Daniel');
  print(nomes.length);
  print(nomes[0]);

  Set<int> conjunto = {0, 1, 2, 3, 4, 4, 4, 4}; //length = 5, nao aceita duplicado
  print(conjunto is Set);

  Map<String, double> notasDosAlunos = {
    'Ana': 9.7,
    'Bia': 9.2,
    'Carlos': 7.8
  };

  for (var chave in notasDosAlunos.keys) {
    print('chave = $chave');
  }

  for (var valor in notasDosAlunos.values) {
    print('value = $valor');
  }

  for (var registro in notasDosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }

  var variavel = 3;
  variavel = 4;

  final finais = 3;
  //finais = 6

  const constante = 5;
  //constante = 7
}

