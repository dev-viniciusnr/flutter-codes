import 'package:flutter/material.dart';
import '../main.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: DefaultTabController(
          length: 1,
          initialIndex: 0,
          child: Scaffold(
              appBar: AppBar(title: Text("Vilists - Tudo Sobre Listas")),
              drawer: Drawer(child: generateListViewDrawerLayout(context)),
              body: TabBarView(
                children: [ContainerAbout()],
              )),
        ));
  }
}

Widget ContainerAbout() {
  return SingleChildScrollView(
      child: Column(children: [
    Container(
      margin: new EdgeInsets.only(top: 10, bottom: 20.0),
      child: Text("Por que Usar Listas?",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      padding: new EdgeInsets.only(bottom: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('images/duvida.jpg'),
      ),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "Você já se pegou em uma situação onde havia diversas coisas para serem feitas e não sabia por onde começar?",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "A lista permite identificar a prioridade de cada tarefa dentro do dia, o que tem um impacto direto na produtividade.",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      padding: new EdgeInsets.only(bottom: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('images/produtividade.png'),
      ),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "Saber o que tem de ser feito primeiro aumenta a agilidade na execução dos trabalhos, uma vez que os colaboradores sabem exatamente o que deve ser feito e não perdem tempo com esse tipo de decisão.",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
    ),
    Container(
      margin: new EdgeInsets.only(top: 10, bottom: 20.0),
      child: Text("Quais as Vantagens?",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "Todos nós temos milhões de coisas pra fazer todos os dias. Muitas vezes não sabemos por onde começar e nem como vamos dar conta de tudo.",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "Existem diversas vantagens na utilização de listas no seu dia a dia, as vantagens são:",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
    ),
    Container(
      margin: new EdgeInsets.only(top: 10, bottom: 20.0),
      child: Text("Melhorar sua Organização", style: TextStyle(fontSize: 25)),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      padding: new EdgeInsets.only(bottom: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('images/organizacao.jpg'),
      ),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "Conseguir visualizar tudo que já foi concluído no dia e o que ainda falta ser feito vai te ajudar a manter a organização e o foco. Fora a noção de tempo que vai te dar. Se de fato será possível concluir tudo no tempo disponível.",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
    ),
    Container(
      margin: new EdgeInsets.only(top: 10, bottom: 20.0),
      child: Text("Te Manter Motivado", style: TextStyle(fontSize: 25)),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      padding: new EdgeInsets.only(bottom: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('images/motivacao.jpg'),
      ),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        " Essa satisfação com o seu desempenho vai te motivar a querer cada vez mais concluir suas tarefas e riscá-las da lista.",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "Essa sensação de realização e motivação pode ser perdida quando você pula de uma tarefa para outra sem nem se dar conta do progresso que está conseguindo alcançar.",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
    ),
    Container(
      margin: new EdgeInsets.only(top: 10, bottom: 20.0),
      child: Text("Melhorar Memória", style: TextStyle(fontSize: 25)),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      padding: new EdgeInsets.only(bottom: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('images/memoria.jpg'),
      ),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "As Listas vão te dar liberdade para esquecer o que você quiser. Contanto que você se lembre de olhar a sua lista de tarefas, nada que precisa ser feito vai se perder ou ficar esquecido.",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
    ),
    Container(
      margin: new EdgeInsets.only(top: 10, bottom: 20.0),
      child: Text("Aumentar Produtividade", style: TextStyle(fontSize: 25)),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      padding: new EdgeInsets.only(bottom: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('images/produtividade2.jpg'),
      ),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "Conseguir anotar tudo que precisa ser feito em uma lista te dá a possibilidade de revisar várias vezes suas tarefas e priorizar as mais importantes. ",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "Focar nas tarefas mais importantes vai te ajudar a aumentar muito sua produtividade. Nada de ficar perdendo tempo com o que pouco interessa ou com coisas que não vão agregar valor no seu dia.",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
        ),
      ),
    ),
  ]));
}
