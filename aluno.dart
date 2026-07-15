import 'nota.dart';

class Aluno {
  String _nome;
  List<Nota> _notas = [];

  Aluno(this._nome);

  String get media => media;

  String get nome => _nome;
  set nome(String value) => _nome = value;

  List<Nota> get notas => _notas;
  set notas(List<Nota> value) => _notas = value;
}

void cadastrarAluno() {
  Aluno student = Aluno('Ana');
  // Create an instance of a concrete Nota subclass instead of abstract Nota
  // student._notas.add(ConcreteNotaSubclass(8.5, 'Prova 1'));
}
