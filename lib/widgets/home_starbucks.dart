import 'package:evaluacion_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
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
              height: sizeScreen.height * 0.60,
              width: double.infinity,
              child: Stack(
                children: [
                  Column(
                    children: [
                      const Image(image: AssetImage('assets/rewards.png')),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Column(
                          children: [
                            Text(
                              '¡Hola café gratis!',
                              style: TextStyle(
                                  color: Color.fromRGBO(30, 57, 50, 1),
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Registrate en Starbucks Rewards, suma Stars y obtén beneficios',
                              style: TextStyle(
                                  color: Color.fromRGBO(30, 57, 50, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
