
import 'package:flutter/material.dart';
import 'package:teste/controller/controller..dart';
import 'package:teste/model/employee.dart';

class EmployeeController with ChangeNotifier implements Controller<Employee>{
  
  void create(Employee employee) {
    employees.add(employee);
    notifyListeners();
  }

  void update(Employee employee) {
    employees.removeWhere((element) => element.id == employee.id);
    employees.add(employee);
    notifyListeners();
  }

  void delete(Employee employee) {
    employees.removeWhere((element) => element.id == employee.id);
    notifyListeners();
  }

  List<Employee> getAll() {
    return employees;
  }
}