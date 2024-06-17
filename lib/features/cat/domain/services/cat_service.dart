import 'package:fpdart/fpdart.dart';
import 'package:pruebatec/core/error/failure.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';

abstract interface class CatService {
  Future<List<Cat>> findAll();
}
