import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';
import 'package:pruebatec/features/cat/presentation/provider/detail_provider.dart';

class CardCat extends StatelessWidget {
  final Cat cat;

  const CardCat({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    final detailProvider = Provider.of<DetailProvider>(context);
    return InkWell(
      onTap: () {
        detailProvider.cat = cat;
        Navigator.of(context).pushNamed('cat.detail');
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Colors.grey.shade600,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cat.name),
                  Text('mas ${cat.id}'),
                ],
              ),
              FadeInImage(
                placeholder: const AssetImage('assets/img/loading.gif'),
                placeholderFit: BoxFit.scaleDown,
                image: NetworkImage(cat.imageUrl),
                imageErrorBuilder: (BuildContext context, error, stackTrace) {
                  return Image.asset(
                    'assets/img/placeholder.png',
                    height: 280,
                    fit: BoxFit.contain,
                  );
                },
                height: 400,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('país de origen: ${cat.origin} '),
                  Text('Inteligencia: ${cat.intelligence} '),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
