import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  final _perguntas = [
    {
      'texto': "1 - Qual é a sua cor favorita?",
      'respostas': ['Azul', 'Vermelho', 'Preto', 'Rosa'],
    },
    {
      'texto': "2 - Qual é o seu animal favorito?",
      'respostas': ['Gato', 'Cachorro', 'Vaca', 'Dinossauro'],
    },
    {
      'texto': '3 - Qual sua comida favorita?',
      'respostas': ['Pizza', 'Hamburguer', 'Feijoada', 'Churrasco'],
    }
  ];

  // Ativa quando o botão resposta é clicado
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? (_perguntas[perguntaSelecionada]['respostas'] as List<String>)
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: temPerguntaSelecionada
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Widget Questão
                  Questao(_perguntas[perguntaSelecionada]['texto'].toString()),
                  // Widget Botão Resposta
                  ...respostas.map((texto) => Resposta(texto, responder))
                ],
              )
            : Center(
                child: Text(
                  "Parabéns!",
                  style: TextStyle(fontSize: 28),
                ),
              ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
