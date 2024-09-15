import 'package:evaluacion_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});
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
            Container(
              height: sizeScreen.height * 0.90,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(10, 71, 51, 1),
                    Color.fromRGBO(16, 97, 71, 1),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 150,
                    ),
                    const Text(
                      'Hola, café gratis!',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Image.asset(
                      'assets/titulo.png',
                      height: 60,
                    ),
                    const Text(
                      'Descarga la App, acumula Stars y disfruta de los beneficios!',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ChipRewards(
                      textoChip: '      Únete      ',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const ChipRewards(textoChip: 'Iniciar Sesión')
                  ],
                ),
              ),
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
