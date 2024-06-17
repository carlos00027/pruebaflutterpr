import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';
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
            SizedBox(
              child: Image.network(
                cat.imageUrl,
                fit: BoxFit.contain,
                height: 390,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
