import 'package:desafio_justa/labels/label_h1.dart';
import 'package:desafio_justa/labels/label_h2.dart';
import 'package:flutter/material.dart';

class DesafioDescricao extends StatelessWidget {
  const DesafioDescricao(
      {super.key, required this.titulo, required this.descricao});

  final String titulo;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
            child: LabelH1(titulo: titulo)
        ),
      ),
      LabelH2(descricao: descricao),
    ]);
  }
}
