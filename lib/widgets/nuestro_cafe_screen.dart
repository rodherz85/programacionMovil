import 'package:evaluacion_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NuestroCafe extends StatelessWidget {
  const NuestroCafe({super.key});

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
            TituloApp(sizeScreen: sizeScreen, textoTitulo: 'Nuestro Café'),
            const SizedBox(
              height: 20,
            ),
            const ParrafoCafe(
              textoParrafo:
                  'El olor al café, a  unos granos recién tostados, es la mejor  bienvenida que cada día planificamos para brindarles cuando abrimos las puertas de nuestras tiendad. Pero eso  es solo el comienzo',
            ),
            const ImagenCafe(
              imagenRuta: 'assets/nuestro_cafe.png',
            ),
            const ParrafoCafe(
                textoParrafo:
                    'De cuerpo entero, un poco ahumado, con notas cítricas, con fuerte presencia de chocolate…el desafío que tenemos constantemente es que cada uno de nuestros clientes encuentre su mezcla favorita y a la vez, que explore nuestras amplias selecciones más singulares. Para alcanzarlo nos abastecemos de los mejores granos de café arábicos siguiendo siempre estrictos principios éticos.'),
            const TituloCafe(
                tamano: 25, textoTitulo: 'Nuestro Tostado Starbucks'),
            const ParrafoCafe(
                textoParrafo:
                    'Cada café que ofrecemos exige un perfil de tostado único para crear una taza con el máximo aroma, acidez, cuerpo y sabor. Al trabajar en un delicado balance en calor, tiempo y arte, nuestros maestros en el tostado hacen resaltar estas únicas características de cada grano de café.'),
            const ImagenCafe(imagenRuta: 'assets/curva_tostado.jpg'),
            const TituloCafe(tamano: 18, textoTitulo: 'Rubio'),
            const ParrafoCafe(
                textoParrafo:
                    'El café Starbucks tostado rubio es tostado en menos tiempo, tiene un cuerpo ligero y sabores suaves.'),
            const TituloCafe(tamano: 18, textoTitulo: 'Medio'),
            const ParrafoCafe(
                textoParrafo:
                    'El café con tostado medio es balanceado con sabores agradables y enriquecidos.'),
            const TituloCafe(tamano: 18, textoTitulo: 'Oscuro'),
            const ParrafoCafe(
                textoParrafo:
                    'Los cafés con tostado oscuro presentan un cuerpo completo y sabores fuertes y robustos.'),
            const TituloCafe(
                tamano: 25,
                textoTitulo:
                    'Descubre los métodos de preparación en Starbucks'),
            const TituloCafe(
                tamano: 20, textoTitulo: '¿Cuál es el correcto para ti?'),
            const ParrafoCafe(
                textoParrafo:
                    'Desde el cultivo responsable hasta el tostado, cada detalle en la elaboración de manera artesanal es fundamental para poder disfrutar de una taza de café Starbucks. Y además de la esencia de los granos, sabemos que la forma en la que se prepara el café tiene un efecto sorprendente en el sabor de cada taza y define su cuerpo. '),
            const ParrafoCafe(
              textoParrafo:
                  'Es por eso que nuestros magníficos baristas se enfocan en crear diariamente rituales escogiendo diferentes métodos de preparación para que sean nuestros clientes quienes se sorprenden. Así, de la mano de las explicaciones de nuestros expertos, no sólo cultivarán la curiosidad sino que podrán seleccionar el mejor método para su experiencia Starbucks. ',
            )
          ],
        ),
      ),
    );
  }
}
