import 'package:evaluacion_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final listMenu = [
      {'title': 'Menú', 'route': 'menu'},
      {'title': 'Rewards', 'route': 'rewards'},
      {'title': 'Café', 'route': 'cafe'},
      {
        'title': 'Comunicados Oficiales',
        'route': 'comunicados',
      },
    ];
    return Scaffold(
        endDrawer: const DrawerStarbucks(),
        body: ListView.separated(
          itemCount: listMenu.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(listMenu[index]['title']!),
            onTap: () {
              Navigator.pop(context);
              final rutaNombre = listMenu[index]['route'];
              Navigator.pushNamed(context, rutaNombre!);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
