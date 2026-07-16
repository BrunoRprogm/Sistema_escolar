import 'nota.dart';

class notaProva extends Nota {
  // Construtora simples até this.peso) Apartir do ":" você está resaltando que
  // valor e descricao são "caracteristicas herdadas da classe "mãe" que é nota.
  notaProva(double valor, String descricao) : super(valor, descricao);

  @override
  double get peso => 2;
  @override
  String get tipo => 'Prova';
}
