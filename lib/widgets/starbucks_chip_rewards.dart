import 'package:flutter/material.dart';

class ChipRewards extends StatelessWidget {
  final String textoChip;
  const ChipRewards({super.key, required this.textoChip});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Chip(
      backgroundColor: const Color.fromRGBO(10, 71, 51, 1),
      label: Text(
        textoChip,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: 110,
          vertical: 8 // Ajustar el padding horizontal y vertical
          ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.white)),
    );
  }
}
