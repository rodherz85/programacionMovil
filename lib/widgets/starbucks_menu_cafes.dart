import 'package:evaluacion_2/widgets/starbucks_stack_menu.dart';
import 'package:flutter/material.dart';

/*
Este widget utiliza los elemntos creados por el Widget MenuProductos y los acomoda en un Wrap
Se reutiliza en la screen Menu
*/

class MenuCafes extends StatelessWidget {
  const MenuCafes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          MenuProductos(
            imagenRuta: 'assets/menu_cafes_360.png',
            textoMenu: 'Cafés Calientes',
          ),
          MenuProductos(
            imagenRuta: 'assets/menu_cafe_frio.png',
            textoMenu: 'Cafés Helados',
          ),
          MenuProductos(
              imagenRuta: 'assets/frapu.png', textoMenu: 'Frapuccino'),
          MenuProductos(
              imagenRuta: 'assets/menu_bebidas_calientes.png',
              textoMenu: 'Bebidas Calientes'),
          MenuProductos(
              imagenRuta: 'assets/te_caliente.png', textoMenu: 'Té Caliente'),
          MenuProductos(
              imagenRuta: 'assets/te_frio.png', textoMenu: 'Té Helado'),
          MenuProductos(
              imagenRuta: 'assets/bebidas_heladas.png',
              textoMenu: 'Bebidas Heladas')
        ],
      ),
    );
  }
}
