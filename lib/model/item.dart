class Item {
  String id;
  double price;
  String name;

  Item({required this.id, required this.price, required this.name});
}

final items = [
  Item(id: '1', price: 14.99, name: 'Batata Frita'),
  Item(id: '2', price: 299.99, name: 'Batata Nacrai'),
  Item(id: '3', price: 2.99, name: 'Moqueca de Peixe'),
  Item(id: '4', price: 29.99, name: 'Strogonoff de Carne'),
  Item(id: '5', price: 25.99, name: 'Strogonoff de Frango'),
  Item(id: '6', price: 24.99, name: 'Strogonoff de Ketchup'),
  Item(id: '7', price: 12.99, name: 'Lasanha a Bolonhesa'),
  Item(id: '8', price: 15.99, name: 'Bife Acebolado'),
];
