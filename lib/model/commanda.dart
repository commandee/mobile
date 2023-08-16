class Commanda {
  final String nome;
  final String descricao;
  final double price;
  final int id;
  bool concluida;

  Commanda({
    required this.nome,
    required this.descricao,
    required this.price,
    this.concluida = false,
    this.id = 0,
  });

  static List<Commanda> commandasList() {
    return [
      Commanda(
          nome: "Commanda #1",
          descricao: "Descrição da commanda 1 e seus ingredientes muito lecais",
          price: 15.00,
          id: 1),
      Commanda(
          nome: "Commanda #2",
          descricao: "Descrição da commanda 2 e seus ingredientes muito lecais",
          price: 15.00,
          id: 2),
      Commanda(
          nome: "Commanda #3",
          descricao: "Descrição da commanda 3 e seus ingredientes muito lecais",
          price: 15.00,
          id: 3
      )
    ];
  }
}
