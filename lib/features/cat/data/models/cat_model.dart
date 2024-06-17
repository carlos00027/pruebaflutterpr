import 'package:pruebatec/features/cat/domain/entities/cat.dart';

class CatModel extends Cat {
  CatModel({
    required super.id,
    required super.name,
    required super.origin,
    required super.intelligence,
    required super.imageUrl,
    required super.description,
    required super.adaptability,
    required super.affectionLevel,
    required super.childFriendly,
    required super.dogFriendly,
    required super.energyLevel,
    required super.grooming,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
        id: json['id'],
        name: json['name'],
        origin: json['origin'],
        intelligence: json['intelligence'],
        imageUrl: 'https://cdn2.thecatapi.com/images/${json['reference_image_id']}.jpg',
        description: json['description'],
        adaptability: json['adaptability'],
        affectionLevel: json['affection_level'],
        childFriendly: json['child_friendly'],
        dogFriendly: json['dog_friendly'],
        energyLevel: json['energy_level'],
        grooming: json['grooming'],
      );
}
