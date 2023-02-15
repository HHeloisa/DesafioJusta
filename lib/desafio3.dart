import 'package:desafio_justa/botao_executar.dart';
import 'package:desafio_justa/constants/constantes.dart';
import 'package:desafio_justa/constants/descricao_desafio.dart';
import 'package:flutter/material.dart';

class Desafio3 extends StatefulWidget {
  const Desafio3({super.key});

  @override
  State<Desafio3> createState() => _Desafio3State();
}

class _Desafio3State extends State<Desafio3> {
  TextEditingController string1 = TextEditingController();
  String desafio3Resultado = '';

  longestWord(sen) {
    sen = sen.replaceAll(RegExp('[^ A-Za-z]'), '');
    int longest = 0;
    String biggestWord = '';
    sen = sen.split(" ");
    sen.forEach((s) => {
          s.length > longest
              // se é do mesmo tamanho, não é menor, e não substitui a palavra anterior, mantendo a primeira
              ? {longest = s.length, biggestWord = s}
              : null
        });
    setState(() {
      desafio3Resultado = biggestWord;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DesafioDescricao(titulo: desafio3, descricao: d3descricao1),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(d3descricao2),
        ),
        TextField(
          controller: string1,
        ),
        BotaoExecutar(
          funcao: () => longestWord(string1.text),
          texto: executarDesafio2,
        ),
        desafio3Resultado == '' ? Container() : Text(desafio3Resultado)
      ],
    );
  }
}
