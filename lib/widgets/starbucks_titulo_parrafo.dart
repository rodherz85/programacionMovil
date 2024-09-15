import 'package:flutter/material.dart';

class TituloCafe extends StatelessWidget {
  final double tamano;
  final String textoTitulo;
  const TituloCafe({
    super.key,
    required this.tamano,
    required this.textoTitulo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          textoTitulo,
          style: TextStyle(fontSize: tamano, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
