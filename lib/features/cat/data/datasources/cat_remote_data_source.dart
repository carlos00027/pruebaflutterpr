import 'package:pruebatec/core/error/exception_custom.dart';
import 'package:pruebatec/core/network/dio_http_client_imp.dart';
import 'package:pruebatec/features/cat/data/models/cat_model.dart';

abstract interface class CatRemoteDataSource {
  Future<List<CatModel>> findAll();
}

class CatRemoteDataSorceImp implements CatRemoteDataSource {
  @override
  Future<List<CatModel>> findAll() async {
    final response = await DioHttpClientImp().get(url: 'https://api.thecatapi.com/v1/breeds');
    if (response.statusCode == 200) {
      final List<dynamic> result = response.data;
      final List<CatModel> cats = result.map((e) => CatModel.fromJson(e)).toList();
      return cats;
    }
    throw ExceptionCustom('no fue posible consultar la fuente remota');
  }
}
