import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var pontuacaoTotal = 0;

  final _perguntas = [
    {
      'texto': "1 - Qual é a sua cor favorita?",
      'respostas': [
        {'texto': 'Azul', 'pontuacao': 5},
        {'texto': 'Vermelho', 'pontuacao': 1},
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Rosa', 'pontuacao': 3},
      ],
    },
    {
      'texto': "2 - Qual é o seu animal favorito?",
      'respostas': [
        {'texto': 'Gato', 'pontuacao': 5},
        {'texto': 'Cachorro', 'pontuacao': 1},
        {'texto': 'Vaca', 'pontuacao': 10},
        {'texto': 'Dinossauro', 'pontuacao': 3},
      ],
    },
    {
      'texto': '3 - Qual sua comida favorita?',
      'respostas': [
        {'texto': 'Pizza', 'pontuacao': 5},
        {'texto': 'Hamburguer', 'pontuacao': 1},
        {'texto': 'Feijoada', 'pontuacao': 10},
        {'texto': 'Churrasco', 'pontuacao': 3},
      ],
    }
  ];

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < _perguntas.length;
  }

  // Ativa quando o botão resposta é clicado
  void responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        pontuacaoTotal += pontuacao;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: temPerguntaSelecionada
            ? Questionario(_perguntas, perguntaSelecionada, responder)
            : Resultado(pontuacaoTotal),
      ),
    );
  }
}
