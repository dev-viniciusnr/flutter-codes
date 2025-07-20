import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainTela3 extends StatelessWidget {
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
      child: Text("Projeto"),
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
          margin: new EdgeInsets.only(top: 10, bottom: 20.0),
          child: Text("Lista de Tarefas", style: TextStyle(fontSize: 28)),
        ),
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 30.0),
          padding: new EdgeInsets.only(bottom: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/lista.jpeg'),
          ),
        ),
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: Text(
            "O tema que pretendemos desenvolver é Lista de Tarefas, pois o mesmo possui inserção e remoção de informações como exigido para o projeto.",
            style: TextStyle(
              fontSize: 18,
              height: 1.25,
            ),
          ),
        ),
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: Text(
            "As informações dos usuários que serão necessárias serão apenas email, nome, sobrenome, usuario e senha.",
            style: TextStyle(
              fontSize: 18,
              height: 1.25,
            ),
          ),
        ),
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: Text(
            "Será necessária uma API para gravar as fotos",
            style: TextStyle(
              fontSize: 18,
              height: 1.25,
            ),
          ),
        ),
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: Text(
            "As informações serão gravadas no servidor",
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
