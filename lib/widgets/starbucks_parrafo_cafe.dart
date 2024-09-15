import 'package:flutter/material.dart';

class ParrafoCafe extends StatelessWidget {
  final String textoParrafo;
  const ParrafoCafe({
    super.key,
    required this.textoParrafo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      child: Text(
        textoParrafo,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
      ),
    );
  }
}
