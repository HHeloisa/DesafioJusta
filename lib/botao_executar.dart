import 'package:flutter/material.dart';

class BotaoExecutar extends StatefulWidget {
  const BotaoExecutar({super.key, this.funcao, required this.texto});

  final Function? funcao;
  final String texto;
  @override
  State<BotaoExecutar> createState() => _BotaoExecutarState();
}

class _BotaoExecutarState extends State<BotaoExecutar> {
  String resultado = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 20),
      child: ElevatedButton(
          onPressed: (() => widget.funcao == null ? null : widget.funcao!()),
          child: Text(widget.texto)),
    );
  }
}
