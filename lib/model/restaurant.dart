//model de restaurant

enum Role { admin, employee }

const stringToRole = {
  "admin": Role.admin,
  "employee": Role.employee,
};

class Restaurant {
  final String id;
  final String name;
  final String address;
  final Role role;

  const Restaurant(
      {required this.id,
      required this.name,
      required this.address,
      required this.role});

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      id: map["id"],
      name: map["name"],
      address: map["address"],
      role: stringToRole[map["role"]]!,
    );
  }
}
