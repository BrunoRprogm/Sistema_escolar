import 'nota.dart';

class notaTrabalho extends Nota {
  // Construtora simples até this.peso) Apartir do ":" você está resaltando que
  // valor e descricao são "caracteristicas herdadas da classe "mãe" que é nota.
  notaTrabalho(double valor, String descricao) : super(valor, descricao);

  @override
  double get peso => 1;
  @override
  String get tipo => 'trabalho';
}
