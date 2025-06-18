import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario(this.perguntas, this.perguntaSelecionada, this.responder,
      {super.key});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? (perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>)
        : [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((texto) => Resposta(texto['texto'] as String,
            () => responder(int.parse(texto['pontuacao'].toString()))))
      ],
    );
  }
}
