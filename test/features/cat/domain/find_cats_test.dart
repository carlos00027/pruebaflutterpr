import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pruebatec/core/error/failure.dart';
import 'package:pruebatec/core/usecase/usecase.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';
import 'package:pruebatec/features/cat/domain/repositories/cat_repository.dart';
import 'package:pruebatec/features/cat/domain/usecases/find_cats.dart';

class MockCatRepository extends Mock implements CatRepository {}

void main() {
  late FindCats findCats;
  late MockCatRepository mockCatRepository;

  setUp(() {
    mockCatRepository = MockCatRepository();
    findCats = FindCats(mockCatRepository);
  });

  final List<Cat> mockCats = [
    Cat(id: '1', name: 'Persian', origin: 'Persia', imageUrl: 'http://example.com/persian.jpg', intelligence: 5, description: '', adaptability: 1, affectionLevel: 3, childFriendly: 2, dogFriendly: 1, energyLevel: 1, grooming: 1),
    Cat(id: '2', name: 'Persian', origin: 'Persia', imageUrl: 'http://example.com/persian.jpg', intelligence: 5, description: '', adaptability: 1, affectionLevel: 3, childFriendly: 2, dogFriendly: 1, energyLevel: 1, grooming: 1),
    Cat(id: '3', name: 'Persian', origin: 'Persia', imageUrl: 'http://example.com/persian.jpg', intelligence: 5, description: '', adaptability: 1, affectionLevel: 3, childFriendly: 2, dogFriendly: 1, energyLevel: 1, grooming: 1),
  ];

  test('debe retornar una lista de gatos', () async {
    when(() => mockCatRepository.findAll()).thenAnswer((_) async => Right(mockCats));

    final result = await findCats.execute(NoParams());

    expect(result.isRight(), true);
    expect(result, Right(mockCats));
  });

  test('debe fallar con Failure ', () async {
    final failure = Failure();
    when(() => mockCatRepository.findAll()).thenAnswer((_) async => Left(failure));
    final result = await findCats.execute(NoParams());
    expect(result.isLeft(), true);
    expect(result, Left(failure));
  });
}
