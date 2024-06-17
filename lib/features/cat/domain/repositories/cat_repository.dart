import 'package:fpdart/fpdart.dart';
import 'package:pruebatec/core/error/failure.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';

abstract interface class CatRepository {
  Future<Either<Failure, List<Cat>>> findAll();
}
