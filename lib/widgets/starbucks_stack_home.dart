import 'package:flutter/material.dart';

/* Este widget crea una pila con una imagen y dos String, un título y una texto
Toma como parámetros la ruta de la imagen y dos strings.
Se reutiliza en la pagina Home
*/

class HomeStack extends StatelessWidget {
  final String imagenRuta;
  final String tituloStack;
  final String textoStack;
  final Color textoColor;

  const HomeStack({
    super.key,
    required this.imagenRuta,
    required this.tituloStack,
    required this.textoStack,
    required this.textoColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image(image: AssetImage(imagenRuta)),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    tituloStack,
                    style: TextStyle(
                        color: textoColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    textoStack,
                    style: TextStyle(
                        color: textoColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        )
      ],
    );
  }
}
