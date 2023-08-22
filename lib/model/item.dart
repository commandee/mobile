class Item {
  String id;
  double price;
  String name;
  String image;

  Item({required this.id, required this.price, required this.name, required this.image});
}

final items = [
  Item(id: '1', price: 14.99, name: 'Bolo Red Velvet', image: 'assets/images/bolo.jpg'),
  Item(id: '2', price: 31.99, name: 'X-Bacon Duplo', image: 'assets/images/hamburguer.jpg'),
  Item(id: '3', price: 21.99, name: 'Milkshake de Frutas Vermelhas', image: 'assets/images/milkshake.jpg'),
  Item(id: '4', price: 24.99, name: 'Panquecas de Banana e Mel', image: 'assets/images/pancake.jpg'),
  Item(id: '5', price: 17.99, name: 'Taça de Sorvete de Chocolate', image: 'assets/images/sorvete.jpg'),
  Item(id: '6', price: 7.99, name: 'Suco de Laranja Natural', image: 'assets/images/suco.jpg'),
  //Item(id: '7', price: 19.99, name: 'Salada Mista', image: 'assets/images/saladaMista.jpg'),
  //Item(id: '8', price: 6.99, name: 'Picolé de Amora', image: 'assets/images/picole.jpg'),
];
