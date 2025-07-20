import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainTela2 extends StatelessWidget {
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
      child: Text("Vitor Perin"),
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
            child: Image.asset('assets/images/foto_vitor.jpeg'),
          ),
        ),
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            "É apaixonado por tecnologia desde os seus 15 anos. Ama criar e desenvolver softwares que entregam valor e resolvam problemas reais. Por outro lado, gosta muito de passar os finais de semana com a sua família, além de tocar guitarra e viajar",
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
