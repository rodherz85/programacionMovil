import 'package:evaluacion_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StarAppBar(),
      endDrawer: const DrawerStarbucks(),
      body: Container(
        color: const Color.fromRGBO(255, 255, 255, 1), //color del container
        width: double.infinity, //Se ajusta a todo el ancho
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '¡Disfrútalos!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Conoce nuestras bebidas y alimentos de temporada',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 10,
                      thickness: 2,
                    ),
                    Text(
                      'Bebidas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 10,
                      thickness: 2,
                    ),
                  ],
                ),
              ),
              const MenuCafes(),
            ],
          ),
        ),
      ),
    );
  }
}
