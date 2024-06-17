import 'package:dio/dio.dart';
import 'package:pruebatec/core/common/constants.dart';
import 'package:pruebatec/features/cat/data/models/cat_model.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';
import 'package:pruebatec/features/cat/domain/services/cat_service.dart';

class TheCatApiServiceImp implements CatService {
  late final Dio http;

  TheCatApiServiceImp() {
    http = Dio();
  }

  @override
  Future<List<Cat>> findAll() async {
    const String path = "https://api.thecatapi.com/v1/breeds";
    final response = await http.get(
      path,
      options: Options(headers: {
        'x-api-key': apiKey,
      }),
    );
    //print(response.data);
    final List<dynamic> data = response.data;
    final List<CatModel> cats = data.map((e) => CatModel.fromJson(e)).toList();
    return cats;
  }
}
