import 'package:flutter/material.dart';

/*Este widget crea una appBar personalizada
requeriere el parámatro para solicitar el tamaño.
Contiene un OnTap que lleva al home al momento de presionarlo
*/
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
            Navigator.pushNamed(
                context, 'home'); //Lleva al home  al presionar el logo
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
