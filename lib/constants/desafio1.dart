import 'package:desafio_justa/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Desafio1 extends StatefulWidget {
  const Desafio1({super.key});

  @override
  State<Desafio1> createState() => _Desafio1State();
}


 class _Desafio1State extends State<Desafio1> {
  String desafio1Resultado = '';
  var lista1 = '1, 3, 4, 7, 19';
  var lista2 = '1, 2, 4, 13, 15';

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
    lista1.forEach((n) => lista2.forEach((nm) => {n == nm ? comum.add(n) : null}));
    print(comum);
    // transformar a lista em uma string separada por virgula
    // salvar o resultado para exibir
    setState(() {
      desafio1Resultado = comum.join(',');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(child: const Text(desafio1)),
          const Text(descricaoDesafio1),
          const Text("Escreva uma lista de numeros separadas por virgulas"),
          //inserir input para lista 1
          const Text("Escreva outra lista de numeros separadas por virgulas"),
          //inserir input para lista 2
          TextButton(
              onPressed: (() => executarDesafio1(lista1, lista2)),
              child: Text("Executar desafio 1")),
          desafio1Resultado == '' ? Container() : Text(desafio1Resultado)
        ]);
  }
}