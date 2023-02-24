import 'package:desafio_justa/componentes/botao_executar.dart';
import 'package:desafio_justa/constants/constantes.dart';
import 'package:desafio_justa/componentes/descricao_desafio.dart';
import 'package:desafio_justa/labels/label_h3.dart';
import 'package:flutter/material.dart';

class Desafio2 extends StatefulWidget {
  const Desafio2({super.key});

  @override
  State<Desafio2> createState() => _Desafio2State();
}

class _Desafio2State extends State<Desafio2> {
  String desafio2Resultado = '';
  TextEditingController string1 = TextEditingController();

  findAge(string) {
    string = string.split(";").map((n) => n.trim()).toList();
    string = string.map((s) => s.split(", ")).toList();
    String name = '';
    int age = 0;
    var resultado = [];

    // preparar os dados
    string.forEach((p) => {
          p.forEach((s) => {
                if (s.contains('key')) name = s.substring(5, s.length),
                if (s.contains('value'))
                  age = int.parse(s.substring(7, s.length)),
              }),
          if (age < 29) {resultado.add(name)}
        });

    // preparar o resultado
    String stringResult =
        "${resultado.length} Pessoa(s): ${resultado.join(', ')}";

    setState(() => {desafio2Resultado = stringResult});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DesafioDescricao(titulo: desafio2, descricao: d2descricao1),
        const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: LabelH3(instrucao: d2descricao2),
        ),
        TextField(
          controller: string1,
        ),
        BotaoExecutar(
          funcao: () => findAge(string1.text),
          texto: executarDesafio2,
        ),
        desafio2Resultado == '' ? Container() : Text(desafio2Resultado)
      ],
    );
  }
}
