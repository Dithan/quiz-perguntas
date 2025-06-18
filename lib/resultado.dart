import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int resultadoFinal;
  final void Function() reiniciarQuestionario;

  const Resultado(this.resultadoFinal, this.reiniciarQuestionario, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    "Parabéns!",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Sua pontuação foi:",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    resultadoFinal.toString(),
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white),
              onPressed: reiniciarQuestionario,
              child: Text("Reiniar Questionário"),
            )
          ],
        ),
      ),
    );
  }
}
