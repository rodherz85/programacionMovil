import 'package:evaluacion_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

/*Este proyecto corresponde a la réplica de la página https://www.starbucks.cl/
En el menu Drawer se reemplaza 'GIFT' y en su lugar se incorpora 'Comunicados oficiales' para practicar la aplicación del widget Card
Las imágenes de la web a replicar se agregaron a la carpeta 'FotosPaginaWebMovil'
*/
class HomeStarbucks extends StatelessWidget {
  const HomeStarbucks({super.key});
  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    //captura todas  las dimensiones de la pantalla
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const StarAppBar(),
      endDrawer: const DrawerStarbucks(),
      body: SingleChildScrollView(
        //Lo utilicé para scrollear la pantalla y poder diseñar un poco más
        child: Column(
          children: [
            const Image(image: AssetImage('assets/home_1.jpeg')),
            Container(
              color: const Color.fromRGBO(164, 136, 192, 1),
              width: double.infinity,
              height: sizeScreen.height * 0.40,
              child: Container(
                padding: const EdgeInsets.all(30),
                child: const Column(
                  children: [
                    Text(
                      'TU MOMENTO DE BRILLAR',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Key Lime Pie & Cookies and Cream llegan  para que disfrutes al máximo tu verano',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: const Color.fromRGBO(203, 168, 88, 1),
              width: double.infinity,
              child: const HomeStack(
                imagenRuta: 'assets/rewards.png',
                tituloStack: '¡Hola café gratis!',
                textoStack:
                    'Registrate en Starbucks Rewards, suma Stars y obtén beneficios.',
                textoColor: Color.fromRGBO(30, 57, 50, 1),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: const Color.fromRGBO(212, 233, 226, 1),
              width: double.infinity,
              child: const HomeStack(
                imagenRuta: 'assets/delivery.png',
                tituloStack:
                    '¡La Experiencia Starbucks llega a donde tu quieras!',
                textoStack: 'Revisa nuestras opciones de delivery',
                textoColor: Color.fromRGBO(0, 117, 74, 1),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: const Color.fromRGBO(212, 233, 226, 1),
              width: double.infinity,
              child: const HomeStack(
                imagenRuta: 'assets/reclutamiento.png',
                tituloStack: 'Únete a algo más grande',
                textoStack: 'Revisa las oportunidades que tenemos para tí',
                textoColor: Color.fromRGBO(0, 117, 74, 1),
              ),
            ),
            const SizedBox(height: 20),
            PiePagina(sizeScreen: sizeScreen),
          ],
        ),
      ),
    );
  }
}
