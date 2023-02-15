import 'package:desafio_justa/constants/constants.dart';
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

  executarDesafio1(lista1, lista2) {
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
      const Center(
          child: Padding(
        padding: EdgeInsets.only(bottom: 18.0),
        child: Text(
          desafio1,
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
        ),
      )),
      const Text(descricaoDesafio1),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Text(d1descricao2),
      ),
      TextField(
        controller: string1,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Text(d1descricao3),
      ),
      TextField(
        controller: string2,
      ),
      TextButton(
          onPressed: (() => executarDesafio1(string1.text, string2.text)),
          child: const Text("Executar desafio 1")),
      desafio1Resultado == '' ? Container() : Text(desafio1Resultado)
    ]);
  }
}
