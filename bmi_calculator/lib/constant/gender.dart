enum Gender { male, female }

extension ParseToString on Gender {
  String toShortString() {
    return toString().split('.').last;
  }
}
