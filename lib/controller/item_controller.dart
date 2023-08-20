import 'package:flutter/material.dart';
import 'package:teste/controller/controller..dart';
import 'package:teste/model/item.dart';

class ItemController with ChangeNotifier implements Controller<Item> {
  void create(Item item) {
    items.add(item);
    notifyListeners();
  }

  void delete(Item item) {
    items.remove(item);
    notifyListeners();
  }

  void update(Item item) {
    for (var i = 0; i < items.length; i++) {
      if (items[i].name == item.name) {
        items[i] = item;
        notifyListeners();
      }
    }
  }

  List<Item> getAll() {
    return items;
  }
}
