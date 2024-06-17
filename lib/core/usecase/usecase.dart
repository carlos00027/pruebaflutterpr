import 'package:fpdart/fpdart.dart';
import 'package:pruebatec/core/error/failure.dart';

abstract interface class UseCase<SuccessType,Params>{
  Future<SuccessType> execute([Params params]);
}

