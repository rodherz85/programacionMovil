import 'package:evaluacion_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ComunicadosScreen extends StatelessWidget {
  const ComunicadosScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const StarAppBar(),
      endDrawer: const DrawerStarbucks(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TituloApp(
              sizeScreen: sizeScreen,
              textoTitulo: 'Comunicados Oficiales',
            ),
            const SizedBox(
              height: 20,
            ),
            const CardComunicados(
              imagenRuta: 'assets/comunicado_viaje.png',
              texto1: 'VIAJA A LA PASIÓN DEL CAFÉ - STARBUCKS REWARDS',
              texto2: 'Septiembre 14, 2023',
            ),
            const CardComunicados(
              imagenRuta: 'assets/comunicado_conosur.jpeg',
              texto1:
                  'Starbucks Cono Sur presenta la tercera versión de Ads  for Good en apoyo a la inclusión y la diversidad',
              texto2: 'Junio 28, 2023',
            ),
            const CardComunicados(
              imagenRuta: 'assets/comunicado_energia.png',
              texto1:
                  'Llénate de energía este comienzo de año con  el sabor de Starbucks en sus nuevas versiones de Iced Shaken Espresso y el sabor de un clásico Cookies & Cream Frappuccino',
              texto2: 'Marzo 30, 2023',
            ),
            const CardComunicados(
              imagenRuta: 'assets/comunicado_sirenas.png',
              texto1:
                  'Conmemoración mes de la mujer: Starbucks Cono Sur presenta "Sirenas", programa interno para mujeres',
              texto2: 'Marzo 08, 2023',
            ),
            const SizedBox(
              height: 20,
            ),
            PiePagina(sizeScreen: sizeScreen)
          ],
        ),
      ),
    );
  }
}
