import 'package:flutter/material.dart';

/*Este widget crea un contenedor con un padding determinado
y se agrega un String correspondiente a la ruta de la imagen.
Se utiliza en la screen Café
*/
class ImagenCafe extends StatelessWidget {
  final String imagenRuta; //la ruta de la imagen
  const ImagenCafe({
    super.key,
    required this.imagenRuta,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Image.asset(imagenRuta),
    );
  }
}
