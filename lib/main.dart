import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    print("Pergunta respondida");
    setState(() {
      perguntaSelecionada += 1;
      if (perguntaSelecionada > 1) {
        perguntaSelecionada = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Questao(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 3'),
            )
          ],
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
