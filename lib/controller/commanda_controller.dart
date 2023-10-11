import 'package:flutter/material.dart';
import 'package:teste/controller/controller..dart';
import 'package:teste/model/commanda.dart';

class CommandaController with ChangeNotifier //não por extends, por with
    implements Controller<Commanda> {

  void create(Commanda commanda) {
    commandas.add(commanda);
    notifyListeners();
  }

  void delete(Commanda commanda) {
    commandas.remove(commanda);
    notifyListeners();
  }

  void update(Commanda commanda) {
    for (var i = 0; i < commandas.length; i++) {
      if (commandas[i].id == commanda.id) {
        commandas[i] = commanda;
        notifyListeners();
      }
    }
  }

  void concluir(Commanda commanda) {
    commanda.isPaid = true;
    notifyListeners();
  }

  void abrir(Commanda commanda) {
    commanda.isPaid = false;
    notifyListeners();
  }
  
  List<Commanda> getAllClosed() {
    return commandas.where((commanda) => commanda.isPaid).toList();
  }

  List<Commanda> getAllOpen() {
    return commandas.where((commanda) => !commanda.isPaid).toList();
  }

  List<Commanda> getAll() {
    return commandas;
  }
}
