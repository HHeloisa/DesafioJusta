import 'package:flutter/material.dart';
import 'package:desafio_justa/pages/about.dart';
import 'package:desafio_justa/componentes/botao_executar.dart';
import 'package:desafio_justa/constants/constantes.dart';
import 'package:desafio_justa/desafios/desafio1.dart';
import 'package:desafio_justa/desafios/desafio2.dart';
import 'package:desafio_justa/desafios/desafio3.dart';

class DesafioJusta extends StatelessWidget {
  const DesafioJusta({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: desafioJusta,
      initialRoute: '/',
      routes: {
        '/about': (context) => const About(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: appName),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: ListView(
          children: [
            const Desafio1(),
            const Desafio2(),
            const Desafio3(),
            Center(
              child: BotaoExecutar(
                texto: about,
                funcao: () => {Navigator.pushNamed(context, '/about')},
              ),
            ),
          ],
        )),
      ),
    );
  }
}
