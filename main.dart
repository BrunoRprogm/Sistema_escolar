import 'dart:io';
import 'aluno.dart';
import 'nota.dart';
import 'turma.dart';

Turma turma = Turma();

int op = 0;

void main(List<String> args) {
  while (true) {
    print("""======= TURMA E NOTAS =======
1 - Cadastrar aluno
2 - Lançar nota
3 - Listar aluno (com média)
0 - Sair
=============================
""");
    op = int.parse(stdin.readLineSync() ?? '');

    switch (op) {
      case 1:
        turma.cadastrarAluno();
        break;
      case 2:
        // Lançar notas
        turma.lancaNota(0, Nota(0));
        break;
      case 3: //Listar aluno (com média nessa porra)
        break;
      case 0:
        print('Logout realizado!');
        return;
      default: // Essa merda informada não está ccerta
    }
  }
}
