import 'package:flutter/material.dart';
import 'package:teste/api.dart';
import 'package:teste/model/employee.dart';

class EmployeeController with ChangeNotifier {
  Future<List<Employee>> getAll() async {
    final response = await api.get("/restaurant/employees");

    if (response.statusCode != 200)
      throw Exception("Erro ao buscar empregados!");

    return response.data.map((employee) => Employee.fromMap(employee));
  }
}
