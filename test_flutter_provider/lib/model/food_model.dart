import 'dart:convert';

class Food {
  // 1. declare variable
  int? id;
  String? name;

  // 2. default constructor with parameters
  Food({
    this.id,
    this.name,
  });

  // 3. method for add data to class variable, and return class object data
  Food copyWith({
    int? id,
    String? name,
  }) {
    return Food(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  // 4. method to convert class object data to Map data
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name};
  }

  // 5. factory named constructor to convert Map data to class object data
  factory Food.fromMap(Map<String, dynamic> map) {
    return Food(
      id: map['id'],
      name: map['name'],
    );
  }

  // 6. convert Map data to json data by encoding
  String toJson() => json.encode(toMap());

  // 7. decode String data and then convert to class object data
  factory Food.fromJson(String source) => Food.fromMap(json.decode(source));

  /// 8. override method for toString,
  /// this method will help to human readable by printing class object data
  @override
  String toString() => 'Food(id: $id, name: $name)';

  // 9. override method to check class object data type
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Food && other.id == id && other.name == name;
  }

  // 10. override method to get hashCode of class object data
  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
