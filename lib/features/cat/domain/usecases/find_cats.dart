import 'package:fpdart/fpdart.dart';
import 'package:pruebatec/core/error/failure.dart';
import 'package:pruebatec/core/usecase/usecase.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';
import 'package:pruebatec/features/cat/domain/services/cat_service.dart';

class FindCats implements UseCase {
  final CatService catService;

  FindCats(this.catService);

  @override
  Future<List<Cat>> execute([void params]) async {
    final result = await catService.findAll();
    return result;
  }


}
