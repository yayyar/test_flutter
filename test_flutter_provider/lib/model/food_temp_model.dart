import 'dart:convert';

class FoodTempModel {
  int? id;
  String? foodName;
  FoodTempModel({
    this.id,
    this.foodName,
  });

  FoodTempModel copyWith({
    int? id,
    String? foodName,
  }) {
    return FoodTempModel(
      id: id ?? this.id,
      foodName: foodName ?? this.foodName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'foodName': foodName,
    };
  }

  factory FoodTempModel.fromMap(Map<String, dynamic> map) {
    return FoodTempModel(
      id: map['id']?.toInt(),
      foodName: map['foodName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodTempModel.fromJson(String source) =>
      FoodTempModel.fromMap(json.decode(source));

  @override
  String toString() => 'FoodTempModel(id: $id, foodName: $foodName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FoodTempModel &&
        other.id == id &&
        other.foodName == foodName;
  }

  @override
  int get hashCode => id.hashCode ^ foodName.hashCode;
}
