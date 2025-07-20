import 'package:flutter/material.dart';
import 'package:vilists/main.dart';
import 'package:vilists/view/lists_in.dart';

class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: DefaultTabController(
          length: 1,
          initialIndex: 0,
          child: Scaffold(
              appBar: AppBar(title: Text("Vilists - Lista de Tarefas")),
              drawer: Drawer(child: generateListViewDrawerLayout(context)),
              backgroundColor: Colors.grey[200],
              body: TabBarView(
                children: [ListasUsuario()],
              )),
        ));
  }
}

class ListasUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: ListViewBasic(context));
  }
}

Widget ListViewBasic(context) {
  return ListView(
    children: [
      Card(
        child: ListTile(
          title: Text(
            "Faculdade - Lição de Casa",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: Icon(Icons.format_list_bulleted_outlined),
          trailing: Text("15",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsIn();
            }));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Faculdade - Provas",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: Icon(Icons.format_list_bulleted_outlined),
          trailing: Text("7",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsIn();
            }));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Casa - Lista de Compras",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: Icon(Icons.format_list_bulleted_outlined),
          trailing: Text("25",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsIn();
            }));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Casa - Problemas a Arrumar",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: Icon(Icons.format_list_bulleted_outlined),
          trailing: Text("4",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsIn();
            }));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Eventos",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: Icon(Icons.format_list_bulleted_outlined),
          trailing: Text("3",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsIn();
            }));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Séries",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: Icon(Icons.format_list_bulleted_outlined),
          trailing: Text("14",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsIn();
            }));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Jogos",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: Icon(Icons.format_list_bulleted_outlined),
          trailing: Text("18",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsIn();
            }));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Praia",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: Icon(Icons.format_list_bulleted_outlined),
          trailing: Text("12",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsIn();
            }));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Livros",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: Icon(Icons.format_list_bulleted_outlined),
          trailing: Text("6",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsIn();
            }));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
      Card(
        child: ListTile(
          title: Text(
            "Carro",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: Icon(Icons.format_list_bulleted_outlined),
          trailing: Text("2",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsIn();
            }));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
      ),
    ],
  );
}
