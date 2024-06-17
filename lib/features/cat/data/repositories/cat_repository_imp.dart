import 'package:fpdart/fpdart.dart';
import 'package:pruebatec/core/error/failure.dart';
import 'package:pruebatec/features/cat/data/datasources/cat_remote_data_source.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';
import 'package:pruebatec/features/cat/domain/repositories/cat_repository.dart';

class CatRepositoryImp implements CatRepository {
  final CatRemoteDataSource catRemoteDataSource;

  CatRepositoryImp(this.catRemoteDataSource);

  @override
  Future<Either<Failure, List<Cat>>> findAll() async {
    final cats = await catRemoteDataSource.findAll();
    return right(cats);
  }
}
