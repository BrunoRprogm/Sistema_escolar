import 'nota.dart';
import 'notaProva.dart';
import 'notaTrabalho.dart';

class Aluno {
  String _nome;

  List<Nota> _notas = [];

  Aluno(this._nome);

  String get nome => _nome;
  set nome(String value) => _nome = value;

  List<Nota> get notas => _notas;

  set notas(List<Nota> value) => _notas = value;

  double get media {
    if (notas.isEmpty) return 0;
    double soma = 0, somaPesos = 0;
    for (var n in notas) {
      soma += n.valor * n.peso;
      somaPesos += n.peso;
    }
    return soma / somaPesos;
  }

  void listarNotaAluno() {
    for (var n in _notas) {
      print('${n.tipo}: ${n.getDescricao()} ${n.valor} (peso ${n.peso})');
    }
    print(media);
  }

  void lancarNotaProva(double valor, String descricao) {
    _notas.add(notaProva(valor, descricao));
  }

  void lancarNotaTrabalho(double valor, String descricao) {
    _notas.add(notaTrabalho(valor, descricao));
  }
}
