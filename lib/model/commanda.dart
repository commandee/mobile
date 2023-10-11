import 'package:teste/model/order.dart';

class Commanda {
  final String customer;
  final int table;
  final int id;
  bool isPaid;
  late List<Order> orders;

  Commanda({
    required this.customer,
    required this.table,
    required this.id,
    this.isPaid = false,
    List<Order>? orders,
  }) {
    this.orders = orders ?? [];
  }

  double get total {
    double total = 0;
    for (var order in orders) {
      total += order.item.price * order.quantity;
    }
    return total;
  }

  int get qntOrders {
    return orders.length;
  }
}

final commandas = [
  Commanda(customer: 'Meida', table: 5, id: 1, isPaid: true, orders: [
    orders[0],
    orders[1],
  ]),
  Commanda(customer: 'Vik', table: 15, id: 2, orders: [
    orders[2],
    orders[3],
  ]),
  Commanda(
    customer: 'Nacrai',
    table: 7,
    id: 3,
    isPaid: true
  ),
  Commanda(customer: 'Isa', table: 9, id: 4, orders: [orders[4]]),
  Commanda(customer: 'Carla', table: 13, id: 5),
  Commanda(customer: 'Vitor', table: 11, id: 6, orders: [orders[5]]),
];
