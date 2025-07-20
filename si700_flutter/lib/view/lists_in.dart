import 'package:flutter/material.dart';
import '../main.dart';
import './lists.dart';

class ListsIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: DefaultTabController(
          length: 1,
          initialIndex: 0,
          child: Scaffold(
              appBar: AppBar(title: Text("Vilists - Tarefas")),
              drawer: Drawer(child: generateListViewDrawerLayout(context)),
              backgroundColor: Colors.grey[200],
              body: TabBarView(
                children: [ListasDentroUsuario()],
              )),
        ));
  }
}

class ListasDentroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: ListInViewBasic());
  }
}

Widget ListInViewBasic() {
  return ListView(
    children: [
      Container(
        margin: new EdgeInsets.only(top: 10, bottom: 20.0, left: 20),
        child: Text("Faculdade - Lição de Casa",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Trabalho1 - ProgMobile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: Text("Entregar a parte Visual do App"),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.close),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Trabalho2 - ProgMobile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: Text("Entregar a parte Funcional do App"),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.close),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Trabalho - Computação Gráfica",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: Text("Entregar aeroporto modelado"),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.close),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Atividade - Lógica Matemática",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: Text("Fazer Exercício 5 do Moodle"),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.close),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Vídeo - Seminários 2",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: Text("Vídeo Sobre Carreira"),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.close),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Trabalho - Analíse de Sistemas",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: Text("Fazer Wikipédia de Diagramas"),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.close),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Trabalho Final - Prog Mobile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: Text("Objetivo de Tirar 10 no Trabalho"),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.close),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
    ],
  );
}
