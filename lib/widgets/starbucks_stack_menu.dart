import 'package:flutter/material.dart';

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
                  fit: BoxFit.cover, // Ajusta el tamaño de la imagen
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
