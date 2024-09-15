import 'package:flutter/material.dart';

/*Este widget consta de un Stack que contiene un container en forma redonda y se agrega la imagen del producto
Solicita un string correspondiente a la ruta de la imagen y otro string correspondiente al texto de la descripción del producto
Se utiliza en un un widget llamado MenuCafe
*/
class MenuProductos extends StatelessWidget {
  final String imagenRuta;
  final String textoMenu;

  const MenuProductos(
      {super.key, required this.imagenRuta, required this.textoMenu});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 130,
          width: 120,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(30, 57, 50, 1),
                    shape: BoxShape.circle),
              ),
              Image(
                  image: AssetImage(imagenRuta),
                  alignment: Alignment.center), // Alinea la imagen al centro),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          textoMenu,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
