class User {
  // 1. declare class variable
  int? id;
  String? name;

  // 2. default constructor with parameters
  User({required this.id, required this.name});

  // 3. convert class object data to Map
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
    };
  }

  // 4. convert Map to class object data
  User.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }
}
