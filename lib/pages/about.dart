import 'package:desafio_justa/componentes/botao_executar.dart';
import 'package:desafio_justa/constants/constantes.dart';
import 'package:desafio_justa/componentes/descricao_desafio.dart';
import 'package:desafio_justa/labels/label_h3.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text(desafioJusta),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const DesafioDescricao(
                  titulo: about,
                  descricao: aboutDescription,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24.0),
                  child: LabelH3(instrucao: nome),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24.0),
                  child: LabelH3(instrucao: contato),
                ),
                Center(
                  child: BotaoExecutar(
                    texto: "Desafio",
                    funcao: () => {Navigator.pushNamed(context, '/')},
                  ),
                ),
              ],
            )));
  }
}
