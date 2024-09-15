import 'package:flutter/material.dart';

class StarAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StarAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        toolbarHeight: 40,
        title: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'home');
          },
          child: SizedBox(
            height: 40,
            child: Image.asset('assets/logo.png'),
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(
      kToolbarHeight); // Define el tamaño preferido del AppBar
}
