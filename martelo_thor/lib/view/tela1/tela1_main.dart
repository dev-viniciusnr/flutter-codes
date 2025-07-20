import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainTela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return telaApresentacao();
  }
}

Widget nomeAluno() {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: 80,
      minHeight: 40,
    ),
    child: FittedBox(
      fit: BoxFit.fill,
      child: Text("Vinícius Nonato"),
    ),
  );
}

Widget telaApresentacao() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              nomeAluno(),
              Divider(
                thickness: 3,
              ),
            ],
          ),
        ),
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 30.0),
          padding: new EdgeInsets.only(bottom: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/foto_vinicius.jpg'),
          ),
        ),
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            "Eu sou aluno de TADS na UNICAMP, tenho 19 anos, moro em Diadema zona sul de São Paulo, trabalho na Diamix na qual é uma empresa especializada na venda de e-commerce, curto jogar videogames e impressão 3D nas horas vagas.",
            style: TextStyle(
              fontSize: 18,
              height: 1.25,
            ),
          ),
        )
      ],
    ),
  );
}
