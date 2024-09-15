import 'package:flutter/material.dart';

/*
Este Widget crea  un párrafo con con un texto en tamaño 15 y wight w300
Toma como parámetro el String correspondiente al texto del párrafo
Se utiliza en la screen Café
*/

class ParrafoCafe extends StatelessWidget {
  final String textoParrafo;
  const ParrafoCafe({
    super.key,
    required this.textoParrafo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      child: Text(
        textoParrafo,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
      ),
    );
  }
}
