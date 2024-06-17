import 'package:get_it/get_it.dart';
import 'package:pruebatec/features/cat/data/services/the_cat_api_service_imp.dart';
import 'package:pruebatec/features/cat/domain/services/cat_service.dart';
import 'package:pruebatec/features/cat/domain/usecases/find_cats.dart';
import 'package:pruebatec/features/cat/presentation/provider/landing_provider.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initCat();

}

void _initCat(){
  serviceLocator.registerLazySingleton<CatService>(() => TheCatApiServiceImp());
  serviceLocator.registerFactory(() => FindCats(serviceLocator()));
  serviceLocator.registerFactory(() => LandingProvider());
}