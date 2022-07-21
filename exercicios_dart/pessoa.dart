class Pessoa {
  String nome = '';
  String _cpf = ''; //private

  set cpf(String cpf) { this._cpf = cpf; }
  String get cpf { return this._cpf; }
}