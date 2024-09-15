import 'package:flutter/material.dart';

class ImagenCafe extends StatelessWidget {
  final String imagenRuta;
  const ImagenCafe({
    super.key,
    required this.imagenRuta,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Image.asset(imagenRuta),
    );
  }
}
