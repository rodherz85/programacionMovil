import 'package:evaluacion_2/widgets/comunicados_screen.dart';
import 'package:evaluacion_2/widgets/menu_screen.dart';
import 'package:evaluacion_2/widgets/nuestro_cafe_screen.dart';
import 'package:evaluacion_2/widgets/rewards_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeStarbucks(),
    'error': (BuildContext context) => const ErrorScreen(),
    'comunicados': (BuildContext context) => const ComunicadosScreen(),
    'menu': (BuildContext context) => const MenuScreen(),
    'cafe': (BuildContext context) => const NuestroCafe(),
    'rewards': (BuildContext context) => const RewardsScreen(),
  };

  static Route<dynamic> onGenerationRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );
  }
}
