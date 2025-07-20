import 'package:flutter/material.dart';
import 'package:si700_flutter/blocs/addlistbloc.dart';
import 'package:si700_flutter/view/addlist.dart';
import '../main.dart';

class Lists extends StatelessWidget {
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
    return Center(child: ListInViewBasic(context));
  }
}

Widget ListsTeste(context) {
  AddListBloc list = new AddListBloc();
  return FutureBuilder(
      initialData: "Carregando...",
      future: list.obterLista(),
      builder: (BuildContext context,AsyncSnapshot map) {
     if (map.connectionState != ConnectionState.done) {
          return Center(child: CircularProgressIndicator());
        }
        // print(map.data);
        List<Widget> children = [];
        for (int i = 0; i < map.data.length; i++) {
          var element = map.data[i];
          // print(element);

          children.add(new Card(
            child:  ListTile(
              title: Text(
                element['titulo'],
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(element['desc']),
              trailing: Icon(Icons.close),
              onTap: () {},
            ),
          ));
          children.add(Padding(
            padding: const EdgeInsets.all(2.0),
          ));
        }
      children.add( Center(
        child: Container(
          alignment: Alignment.bottomRight,
          margin: new EdgeInsets.only(right: 10.0),
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddList();
              }));
            },
            child: Icon(Icons.add),
          ),
        ),
      ));
        return new ListView(children: children);
      });
}

Widget ListInViewBasic(context) {
  return ListsTeste(context);
  return ListView(
    children: [
      Card(
        child: ListTile(
          title: Text(
            "Trabalho1 - ProgMobile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: Text("Entregar a parte Visual do App"),
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
          trailing: Icon(Icons.close),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Center(
        child: Container(
          alignment: Alignment.bottomRight,
          margin: new EdgeInsets.only(right: 10.0),
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddList();
              }));
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    ],
  );
}
