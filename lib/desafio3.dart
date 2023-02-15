import 'package:desafio_justa/constants/constants.dart';
import 'package:desafio_justa/constants/descricaoDesafio.dart';
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
        const DesafioDescricao(titulo: desafio3, descricao: descricaoDesafio3),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(d1descricao2),
        ),
        TextField(
          controller: string1,
        ),
        TextButton(
            onPressed: (() => longestWord(string1.text)),
            child: const Text(executarDesafio3)),
        desafio3Resultado == '' ? Container() : Text(desafio3Resultado)
      ],
    );
  }
}