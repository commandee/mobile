import 'package:teste/model/item.dart';

enum Priority { low, medium, high }

enum Status { pending, inProgress, done }

class Order {
  int quantity;
  Item item;
  String? notes;
  Priority priority;
  Status status;

  Order(
      {required this.quantity,
      required this.item,
      this.notes,
      this.priority = Priority.low,
      this.status = Status.pending});
}

final orders = [
  Order(
      quantity: 1,
      item: items[0],
      notes: 'Sem sal',
      priority: Priority.low,
      status: Status.done),
  Order(
      quantity: 2,
      item: items[1],
      notes: 'Sem cebola',
      priority: Priority.high,
      status: Status.done),
  Order(quantity: 3, item: items[2], priority: Priority.medium),
  Order(
      quantity: 4,
      item: items[3],
      notes: 'Sem amendoim',
      priority: Priority.high),
  Order(quantity: 5, item: items[4], priority: Priority.high),
  Order(
      quantity: 6,
      item: items[5],
      priority: Priority.low,
      status: Status.inProgress),
];
