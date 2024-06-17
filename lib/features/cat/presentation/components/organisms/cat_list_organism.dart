import 'package:flutter/material.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';
import 'package:pruebatec/features/cat/presentation/components/molecules/cat_card_molecule.dart';

class CatListOrganism extends StatelessWidget {
  final List<Cat> cats;
  final void Function(Cat) onCatSelected;

  const CatListOrganism({
    super.key,
    required this.cats,
    required this.onCatSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cats.length,
      itemBuilder: (BuildContext context, int key) {
        final cat = cats[key];
        return CatCardMolecule(
          cat: cat,
          onTap: () {
            onCatSelected(cat);
          },
        );
      },
    );
  }
}
