import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

class RegisterData {
  final String username;
  final String name;
  final String password;

  RegisterData({
    required this.username,
    required this.name,
    required this.password,
  });

  @override
  String toString() {
    return '$runtimeType($username, $name, $password)';
  }

  @override
  bool operator ==(Object other) {
    if (other is RegisterData) {
      return username == other.username &&
          name == other.name &&
          password == other.password;
    }
    return false;
  }

  @override
  int get hashCode => hash3(username, name, password);
}
