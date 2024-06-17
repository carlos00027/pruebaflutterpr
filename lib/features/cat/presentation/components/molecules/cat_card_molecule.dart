import 'package:flutter/material.dart';
import 'package:pruebatec/features/cat/domain/entities/cat.dart';

class CatCardMolecule extends StatelessWidget {
  final void Function()? onTap;
  final Cat cat;

  const CatCardMolecule({
    super.key,
    this.onTap,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
