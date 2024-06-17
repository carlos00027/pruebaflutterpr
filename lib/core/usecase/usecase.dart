import 'package:fpdart/fpdart.dart';
import 'package:pruebatec/core/error/failure.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> execute(Params params);
}

class NoParams {}
