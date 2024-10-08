// ignore: file_names
import 'package:flutter/material.dart';

/*Este widget crea una estructura formada por una Card, que contiene una imagen, un título  y una fecha
Toma 3 Strings, 1 correspondiente a la ruta de la imagen, otro al título y el último a la fecha
*/

class CardComunicados extends StatelessWidget {
  final String imagenRuta;
  final String texto1;
  final String texto2;

  const CardComunicados({
    super.key,
    required this.imagenRuta,
    required this.texto1,
    required this.texto2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Image(image: AssetImage(imagenRuta)),
            Text(
              texto1,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                texto2,
                style: const TextStyle(color: Colors.grey),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
