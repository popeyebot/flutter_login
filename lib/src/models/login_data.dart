import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

class LoginData {
  final String username;
  final String name;
  final String password;

  LoginData({
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
    if (other is LoginData) {
      return username == other.username &&
          name == other.name &&
          password == other.password;
    }
    return false;
  }

  @override
  int get hashCode => hash3(username, name, password);
}
