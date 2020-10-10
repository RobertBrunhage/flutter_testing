//import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show ChangeNotifier;

class User extends ChangeNotifier {
  int _age;
  String _name;
  //Dio _dio;

  // Dependencies should come in from the constructor so we can mock it
  User(this._age, this._name);

  int get age => _age;
  String get name => _name;
  bool get isOld => _age > 24;

  void birthday() {
    //_dio.get("google.com");
    _age++;
    notifyListeners();
  }

  void changeName(String newName) {
    _name = newName;
    notifyListeners();
  }
}
