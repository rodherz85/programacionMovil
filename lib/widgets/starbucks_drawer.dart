import 'package:flutter/material.dart';
import 'package:evaluacion_2/widgets/starbucks_list_drawer.dart';

/* Se agrega widget DetailScreen al Drawer, 
para ser manejado desde esa estructura en la web
*/

class DrawerStarbucks extends StatelessWidget {
  const DrawerStarbucks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(child: DetailScreen());
  }
}
