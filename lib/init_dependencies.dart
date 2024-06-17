import 'package:get_it/get_it.dart';
import 'package:pruebatec/features/cat/data/datasources/cat_remote_data_source.dart';
import 'package:pruebatec/features/cat/data/repositories/cat_repository_imp.dart';
import 'package:pruebatec/features/cat/domain/repositories/cat_repository.dart';
import 'package:pruebatec/features/cat/domain/usecases/find_cats.dart';
import 'package:pruebatec/features/cat/presentation/provider/landing_provider.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initCat();
}

void _initCat() {
  // DataSources
  serviceLocator.registerFactory<CatRemoteDataSource>(() => CatRemoteDataSorceImp());

  // Repositories
  serviceLocator.registerFactory<CatRepository>(() => CatRepositoryImp(serviceLocator()));

  // useCases
  serviceLocator.registerFactory(() => FindCats(serviceLocator()));

  // Providers
  serviceLocator.registerFactory(() => LandingProvider());
}
