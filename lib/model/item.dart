class Item {
  final String id;
  final double price;
  final String name;
  final String image;
  final List<String> ingredients;

  const Item({required this.id, required this.price, required this.name, required this.image, required this.ingredients});
}

const items = [
  Item(id: '1', price: 14.99, name: 'Cheesecake Frutas Vermelhas', image: 'assets/images/bolo.jpg', ingredients: ['farinha', 'ovo', 'leite', 'açúcar', 'manteiga', 'frutas vermelhas']),
  Item(id: '2', price: 31.99, name: 'Hambúguer X-Bacon Duplo', image: 'assets/images/hamburguer.jpg', ingredients: ['pão', 'carne', 'bacon', 'queijo', 'alface', 'tomate', 'cebola', 'molho especial']),
  Item(id: '3', price: 21.99, name: 'Milkshake de Frutas Vermelhas', image: 'assets/images/milkshake.jpg', ingredients: ['leite', 'sorvete', 'frutas vermelhas']),
  Item(id: '4', price: 24.99, name: 'Panquecas de Banana e Mel', image: 'assets/images/pancake.jpg', ingredients: ['farinha', 'ovo', 'leite', 'açúcar', 'manteiga', 'banana', 'mel']),
  Item(id: '5', price: 17.99, name: 'Taça de Sorvete de Chocolate', image: 'assets/images/sorvete.jpg', ingredients: ['leite', 'chocolate', 'emulsificante'] ),
  Item(id: '6', price: 7.99, name: 'Suco de Laranja Natural', image: 'assets/images/suco.jpg', ingredients: ['laranja', 'água', 'açúcar']),
  //Item(id: '7', price: 19.99, name: 'Salada Mista', image: 'assets/images/saladaMista.jpg'),
  //Item(id: '8', price: 6.99, name: 'Picolé de Amora', image: 'assets/images/picole.jpg'),
];
