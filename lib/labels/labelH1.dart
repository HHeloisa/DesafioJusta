import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LabelH1 extends StatelessWidget {
  const LabelH1({super.key, required this.titulo});

  final String titulo;
  @override
  Widget build(BuildContext context) {
    return Text(titulo,
        style: const TextStyle(
            fontSize: 24, color: Colors.blue, fontWeight: FontWeight.w500));
  }
}
