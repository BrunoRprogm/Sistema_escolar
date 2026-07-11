import 'dart:io';

import 'aluno.dart';
import 'nota.dart';

final List<Aluno> _alunos = [];

int get totalAlunos => _alunos.length;

class Turma {
  void cadastrarAluno() {
    print('Informe o nome do aluno:');
    String nome = stdin.readLineSync() ?? '';
    _alunos.add(Aluno(nome));
    print('Aluno: ${_alunos.last.nome}');
    print('\n');
  }

  void lancaNota(int i, Nota n) {
    print('Informe a nota que deseja cadastrar: ');
    i = int.parse(stdin.readLineSync() ?? '0');
    _alunos[i].notas.add(n);
  }
}
