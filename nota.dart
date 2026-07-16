abstract class Nota {
  double valor;
  String descricao;
  Nota(this.valor, this.descricao);

  double get peso;
  String get tipo;
  String getDescricao() => this.descricao;
}
