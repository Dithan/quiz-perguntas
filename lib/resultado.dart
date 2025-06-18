import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int resultadoFinal;
  const Resultado(this.resultadoFinal, {super.key});

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
            Text(
              "Parabéns!",
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
            Text("Sua pontuação foi:"),
            Text(
              resultadoFinal.toString(),
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueAccent),
            )
          ],
        ),
      ),
    );
  }
}
