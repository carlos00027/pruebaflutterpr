import 'package:flutter/material.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';

class DetailProvider extends ChangeNotifier{
  Cat? _cat;

  Cat? get cat => _cat;

  set cat(Cat? value) {
    _cat = value;
    notifyListeners();
  }
}