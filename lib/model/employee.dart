//model do employee

import 'package:teste/model/restaurant.dart';

class Employee {
  int id;
  String username;
  String email;
  String password;

  List<Restaurant> worksAt;

  Employee({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    this.worksAt = const []
  });
}

final defaultUser = 
  Employee(
    id: 0,
    username: 'default',
    email: 'default',
    password: 'default',
    worksAt: [
      restaurants[0],
      restaurants[1],
      restaurants[2]
    ]
  );

final employees = [
  Employee(
      id: 1,
      username: 'Isabela',
      email: 'isabela@gmail.com',
      password: 'senha123',
      worksAt: [
        restaurants[0],
        restaurants[2]
      ]),
  Employee(
    id: 2,
    username: 'Maria da Silva',
    email: 'marisilva@hotmail.com',
    password: 'password',
    worksAt: [
      restaurants[1]
    ]
  ),
  Employee(
      id: 3,
      username: 'José de Alencar',
      email: 'josealencadasdela@yahoo.com.br',
      password: '123456',
      worksAt: [
        restaurants[2]
      ]
      ),
  Employee(
      id: 4,
      username: 'Victoria Secrets',
      email: 'vic31079@gmail.com',
      password: '54321',
      worksAt: [
        restaurants[1]
      ]
      ),
  Employee(
      id: 5,
      username: 'Junin da Matrix Frais',
      email: 'junindigitalizado@gmail.gov',
      password: 'nestlebombons!',
    )
];
