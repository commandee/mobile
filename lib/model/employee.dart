import 'package:teste/model/restaurant.dart';

class Employee {
  int id;
  String username;
  String email;

  List<Restaurant> worksAt;

  Employee(
      {required this.id,
      required this.username,
      required this.email,
      this.worksAt = const []});

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      id: map["id"],
      username: map["username"],
      email: map["email"],
    );
  }
}

final defaultUser = Employee(
  id: 0,
  username: 'default',
  email: 'default',
);
