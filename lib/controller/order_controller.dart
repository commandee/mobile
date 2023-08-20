

import 'package:flutter/material.dart';
import 'package:teste/controller/controller..dart';
import 'package:teste/model/order.dart';

class OrderController with ChangeNotifier implements Controller<Order>{
  void create(Order order) {
    orders.add(order);
    notifyListeners();
  }

  void delete(Order order) {
    orders.remove(order);
    notifyListeners();
  }

  void update(Order order) {
    for (var i = 0; i < orders.length; i++) {
      if (orders[i].quantity == order.quantity) {
        orders[i] = order;
        notifyListeners();
      }
    }
  }

  List<Order> getAll() {
    return orders;
  }
}