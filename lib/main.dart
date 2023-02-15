import 'package:desafio_justa/about.dart';
import 'package:desafio_justa/botao_executar.dart';
import 'package:desafio_justa/constants/constantes.dart';
import 'package:desafio_justa/desafio1.dart';
import 'package:desafio_justa/desafio2.dart';
import 'package:desafio_justa/desafio3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DesafioJusta());
}

class DesafioJusta extends StatelessWidget {
  const DesafioJusta({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: desafioJusta,
      initialRoute: '/',
      routes: {
        '/about': (context) => About(),
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
                texto: "Sobre",
                funcao: () => {Navigator.pushNamed(context, '/about')},
              ),
            ),
          ],
        )
        ),
      ),
    );
  }
}
