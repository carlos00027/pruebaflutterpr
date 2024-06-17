import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';
import 'package:pruebatec/features/cat/presentation/components/molecules/cat_image_molecule.dart';
import 'package:pruebatec/features/cat/presentation/components/organisms/cat_detail_list_organism.dart';
import 'package:pruebatec/features/cat/presentation/provider/detail_provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final detailProvider = Provider.of<DetailProvider>(context);
    final Cat cat = detailProvider.cat!;
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            CatImageMolecule(url: cat.imageUrl),
            const SizedBox(height: 10),
            Expanded(
              child: CatDetailListOrganism(cat: cat),
            )
          ],
        ),
      ),
    );
  }
}
