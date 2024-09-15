import 'package:flutter/material.dart';
import 'package:evaluacion_2/widgets/starbucks_list_drawer.dart';

class DrawerStarbucks extends StatelessWidget {
  const DrawerStarbucks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(child: DetailScreen());
  }
}
