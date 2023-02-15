import 'package:desafio_justa/constants/constants.dart';
import 'package:desafio_justa/constants/descricaoDesafio.dart';
import 'package:flutter/material.dart';

class Desafio2 extends StatefulWidget {
  const Desafio2({super.key});

  @override
  State<Desafio2> createState() => _Desafio2State();
}

class _Desafio2State extends State<Desafio2> {
  final string =
      'key: Matheys, value: 25; key: Heniruqe, value: 29; key: Júlio, value: 21';
  String desafio2Resultado = '';

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
        const DesafioDescricao(titulo: desafio2, descricao: descricaoDesafio2),
        TextButton(
            onPressed: (() => findAge(string)),
            child: const Text(executarDesafio2)),
        desafio2Resultado == '' ? Container() : Text(desafio2Resultado)
      ],
    );
  }
}

formatarResultado(a) {}



//"Dada a função chamada findAge, 
//que recebe uma string contendo chaves e valores,
// onde key possui o nome de uma pessoa e value possui a idade dela, 
//retorne a quantidade e os nomes das pessoas com idade abaixo de 29, anos, conforme exemplo de input e output abaixo: 
//Input: 'key: Matheys, value: 25; key: Heniruqe, value: 29; key: Júlio, value: 21' 
//Output: '2 Pessoa(s):Matheus, Glória'";
