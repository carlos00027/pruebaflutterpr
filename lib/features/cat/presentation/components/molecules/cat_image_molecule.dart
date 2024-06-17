import 'package:flutter/material.dart';

class CatImageMolecule extends StatelessWidget {
  final String url;

  const CatImageMolecule({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Image.network(
        url,
        fit: BoxFit.contain,
        height: 390,
        errorBuilder: (context,object,_){
          return Image.asset('assets/img/placeholder.png');
        },
      ),
    );
  }
}
