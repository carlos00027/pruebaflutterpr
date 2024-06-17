import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';
import 'package:pruebatec/features/cat/domain/usecases/find_cats.dart';

class LandingProvider extends ChangeNotifier {
  final findCats = GetIt.instance<FindCats>();

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  List<Cat> _cats = [];

  List<Cat> get cats => _cats;

  set cats(List<Cat> value) {
    _cats = value;
    notifyListeners();
  }

  String search = '';

  Future<void> fetchCats() async {
    isLoading = true;
    final results = await findCats.execute();
    if (search != '') {
      cats = results.where((cat) => cat.name.toLowerCase().contains(search.toLowerCase())).toList();
    }else{
      cats = results;
    }

    isLoading = false;
  }

  void clear() {
    cats.clear();
    notifyListeners();
  }
}
