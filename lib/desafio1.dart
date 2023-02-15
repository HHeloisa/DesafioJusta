import 'package:desafio_justa/constants/button.dart';
import 'package:desafio_justa/constants/constants.dart';
import 'package:desafio_justa/constants/descricaoDesafio.dart';
import 'package:desafio_justa/labels/labelH3.dart';
import 'package:flutter/material.dart';

class Desafio1 extends StatefulWidget {
  const Desafio1({super.key});

  @override
  State<Desafio1> createState() => _Desafio1State();
}

class _Desafio1State extends State<Desafio1> {
  var string1 = TextEditingController();
  var string2 = TextEditingController();
  String desafio1Resultado = '';

  formatarLista(lista) => lista.split(",").map((n) => n.trim()).toList();

  encontrarIntersecoes(lista1, lista2) {
    // transformar a string em uma lista de valores separados por vírgula
    // preparar a entrada removendo espaços
    // transformei numa função pra não repetir
    lista1 = formatarLista(lista1);
    lista2 = formatarLista(lista2);
    //criar uma variavel pra armazenar os numeros comuns
    var comum = [];
    // iterar uma lista, sobre a outra
    lista1.forEach(
        (n) => lista2.forEach((nm) => {n == nm ? comum.add(n) : null}));
    // transformar a lista em uma string separada por virgula
    // salvar o resultado para exibir
    setState(() {
      desafio1Resultado = comum.join(',');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const DesafioDescricao(titulo: desafio1, descricao: d1descricao1),
      const Padding(
        padding: EdgeInsets.only(top: 18.0),
        child: LabelH3(instrucao: d1descricao2),
      ),
      TextField(
        controller: string1,
      ),
      const Padding(
        padding: EdgeInsets.only(top: 18.0),
        child: LabelH3(instrucao: d1descricao3),
      ),
      TextField(
        controller: string2,
      ),
      BotaoExecutar(
        funcao: () => encontrarIntersecoes(string1.text, string2.text),
        texto: executarDesafio1,
      ),
      // TextButton(
      //     onPressed: (() => encontrarIntersecoes(string1.text, string2.text)),
      //     child: const Text(executarDesafio1)),
      desafio1Resultado == '' ? Container() : Text(desafio1Resultado)
    ]);
  }
}
