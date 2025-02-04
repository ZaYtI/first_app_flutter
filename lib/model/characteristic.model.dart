import 'package:flutter/material.dart';

class Characteristic {
  final IconData icon;
  final String text;
  final Color color;

  const Characteristic(
      {required this.text,
      this.icon = Icons.check_circle_outline,
      this.color = Colors.green});
}
