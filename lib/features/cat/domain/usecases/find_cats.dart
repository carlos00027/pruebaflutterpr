import 'package:fpdart/fpdart.dart';
import 'package:pruebatec/core/error/failure.dart';
import 'package:pruebatec/core/usecase/usecase.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';
import 'package:pruebatec/features/cat/domain/repositories/cat_repository.dart';

class FindCats implements UseCase<List<Cat>, NoParams> {
  final CatRepository catRepository;

  FindCats(this.catRepository);

  @override
  Future<Either<Failure, List<Cat>>> execute(NoParams params) async {
    final res =  await catRepository.findAll();
    return res;
  }
}
