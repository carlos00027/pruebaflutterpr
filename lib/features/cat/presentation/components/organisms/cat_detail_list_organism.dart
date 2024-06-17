import 'package:flutter/material.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';

class CatDetailListOrganism extends StatelessWidget {
  final Cat cat;

  const CatDetailListOrganism({
    super.key,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Text(cat.description),
        Table(
          children: [
            TableRow(
              children: [
                const Text('Nombre del país'),
                Text(cat.origin),
              ],
            ),
            TableRow(
              children: [
                const Text('Inteligencia'),
                Text(cat.intelligence.toString()),
              ],
            ),
            TableRow(
              children: [
                const Text('Adaptabilidad'),
                Text(cat.adaptability.toString()),
              ],
            ),
            TableRow(
              children: [
                const Text('Nivel de afecto'),
                Text(cat.affectionLevel.toString()),
              ],
            ),
            TableRow(
              children: [
                const Text('Amigable con los niños'),
                Text(cat.childFriendly.toString()),
              ],
            ),
            TableRow(
              children: [
                const Text('Nivel de energia'),
                Text(cat.energyLevel.toString()),
              ],
            ),
            TableRow(
              children: [
                const Text('aseado'),
                Text(cat.grooming.toString()),
              ],
            ),
            TableRow(
              children: [
                const Text('aseado'),
                Text(cat.grooming.toString()),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
