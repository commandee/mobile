//model do employee

class Employee {
  int id;
  String username;
  String email;
  String password;

  Employee({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
  });

}


  final employees = [
    Employee(
        id: 1,
        username: 'João Bonifácio',
        email: 'joaobon@gmail.com',
        password: 'senha123'),
    Employee(
      id: 2,
      username: 'Maria da Silva',
      email: 'marisilva@hotmail.com',
      password: 'password',
    ),
    Employee(
        id: 3,
        username: 'José de Alencar',
        email: 'josealencadasdela@yahoo.com.br',
        password: '123456'),
    Employee(
        id: 4,
        username: 'Victoria Secrets',
        email: 'vic31079@gmail.com',
        password: '54321'),
    Employee(
        id: 5,
        username: 'Junin da Matrix Frais',
        email: 'junindigitalizado@gmail.gov',
        password: 'nestlebombons!')
  ];
