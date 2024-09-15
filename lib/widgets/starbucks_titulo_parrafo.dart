import 'package:flutter/material.dart';

/*
Este Widget crea  un Título con con un texto en tamaño variable y en negrita
Toma como parámetro el String correspondiente al texto del título y un double correspondiente al tamaño de la fuente
Se utiliza en la screen Café
*/

class TituloCafe extends StatelessWidget {
  final double tamano; //Tamaño de la fuente
  final String textoTitulo; //texto del Título
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
