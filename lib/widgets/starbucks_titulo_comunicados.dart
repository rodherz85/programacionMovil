import 'package:flutter/material.dart';

/* Este Widget crea un Container que contiene un texto y se utilza como título.
Se reutiliza en las screen Café y Comunicados Oficiales
*/

class TituloApp extends StatelessWidget {
  final Size sizeScreen;
  final String textoTitulo;
  const TituloApp({
    super.key,
    required this.sizeScreen,
    required this.textoTitulo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(30, 57, 50, 1),
      width: double.infinity,
      height: sizeScreen.height * 0.15,
      child: Center(
        child: Text(textoTitulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
      ),
    );
  }
}
