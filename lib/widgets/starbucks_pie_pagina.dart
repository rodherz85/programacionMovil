import 'package:flutter/material.dart';

/* Este widget crea un pie de página con los datos de la página web.
Se reutiliza en todas las screen del proyecto
*/

class PiePagina extends StatelessWidget {
  final Size sizeScreen;
  const PiePagina({
    super.key,
    required this.sizeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: sizeScreen.height * 0.7,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sobre Nosotros',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Nuestra historia'),
              Text('Nuestra cultura inclusiva y valores'),
              Text('Nuestro Café'),
              Text('Historia y novedades'),
              Text('Comunicados Oficiales'),
              Text('Trabaja con Nosotros'),
              SizedBox(height: 10),
              Text(
                'Impacto Social',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Sustentabilidad'),
              Text('Inclusión, diversidad y equidad'),
              Text('Global social Impact'),
              SizedBox(height: 10),
              Text(
                'Atención al cliente',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Contacto'),
              SizedBox(height: 10),
              Text(
                'Experiencia Starbucks',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Formas de comprar'),
              Text('Delivery'),
              SizedBox(height: 10),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage('assets/facebook.png'),
              ),
              Image(
                image: AssetImage('assets/instagram.png'),
              ),
              Image(
                image: AssetImage('assets/linkedin.png'),
              ),
              Image(
                image: AssetImage('assets/tuiter.png'),
              )
            ],
          ),
        ),
        Container(
          height: sizeScreen.height * 0.2,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Accesibilidad Web'),
              Text('Aviso de privacidad'),
              Text('Condiciones de uso'),
              Text('Mapa del sitio'),
              Text('Preferencias sobre cookies'),
            ],
          ),
        ),
      ],
    );
  }
}
