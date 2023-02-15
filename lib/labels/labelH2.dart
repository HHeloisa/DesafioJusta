import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LabelH2 extends StatelessWidget {
  const LabelH2({super.key, required this.descricao});

  final String descricao;
  @override
  Widget build(BuildContext context) {
    return Text(descricao,
        textAlign: TextAlign.justify,
        style: const TextStyle(
            fontSize: 16,
            color: Color.fromARGB(171, 76, 75, 75),
            fontWeight: FontWeight.w300));
  }
}
