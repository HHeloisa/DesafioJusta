import 'package:flutter/material.dart';

class DesafioDescricao extends StatelessWidget {
  const DesafioDescricao(
      {super.key, required this.titulo, required this.descricao});

  final String titulo;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: Divider(
            thickness: 20,
            height: 0,
            color: Colors.blueGrey,
          )),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: Text(titulo,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500)),
        ),
      ),
      Text(descricao),
    ]);
  }
}
