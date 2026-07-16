import 'dart:io';

import 'aluno.dart';
import 'main.dart';
import 'nota.dart';

class Turma {
  final List<Aluno> _alunos = [];

  int get totalAlunos => _alunos.length;

  void cadastrarAluno() {
    print('Informe o nome do aluno:');
    String nome = stdin.readLineSync() ?? '';
    _alunos.add(Aluno(nome));
    print('Aluno: ${_alunos.last.nome}');
    print('\n');
  }

  void lancaNota() {
    String lancando = 's';

    while (lancando == 's') {
      print('Alunos cadastrados:');
      for (var i = 0; i < _alunos.length; i++) {
        print('${i + 1} - ${_alunos[i].nome}');
      }

      print('Informe o número do aluno:');
      int i = (int.tryParse(stdin.readLineSync() ?? '0') ?? 0) - 1;

      if (i < 0 || i >= _alunos.length) {
        print('Aluno inválido.');
        continue;
      }

      print('Informe (p) para nota de prova e (t) para nota de trabalho:');
      String tipo = stdin.readLineSync() ?? '';

      print('Informe o valor da nota:');
      double valor = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;

      print('Informe a descrição da nota (ex: Prova 1):');
      String descricao = stdin.readLineSync() ?? '';

      if (tipo == 'p') {
        _alunos[i].lancarNotaProva(valor, descricao);
      } else {
        _alunos[i].lancarNotaTrabalho(valor, descricao);
      }

      //_alunos[i].notas.add(Nota(valor, descricao));
      print('Nota lançada com sucesso!');

      print('Deseja continuar lançando notas? (s/n)');
      lancando = (stdin.readLineSync() ?? '').toLowerCase();
    }
    print('Notas lançadas com sucesso!');
  }

  void listarNota() {
    if (_alunos.isEmpty) {
      print('Nenhum aluno cadastrado');
      return;
    }
    for (var n in _alunos) {
      n.listarNotaAluno();
    }
  }
}
