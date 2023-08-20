class Item {
  String id;
  double price;
  String name;
  String image;

  Item({required this.id, required this.price, required this.name, required this.image});
}

final items = [
  Item(id: '1', price: 14.99, name: 'Bolo Red Velvet', image: 'assets/images/bolo.jpg'),
  Item(id: '2', price: 299.99, name: 'X-Bacon Duplo', image: 'assets/images/hamburguer.jpg'),
  Item(id: '3', price: 2.99, name: 'Milkshake', image: 'assets/images/milkshake.jpg'),
  Item(id: '4', price: 29.99, name: 'Panquecas', image: 'assets/images/pancake.jpg'),
  Item(id: '5', price: 25.99, name: 'Taça de Sorvete', image: 'assets/images/sorvete.jpg'),
  Item(id: '6', price: 24.99, name: 'Suco de Laranja', image: 'assets/images/suco.jpg'),
  Item(id: '7', price: 12.99, name: 'Salada Mista', image: 'assets/images/saladaMista.jpg'),
  Item(id: '8', price: 15.99, name: 'Picolé', image: 'assets/images/picole.jpg'),
];
