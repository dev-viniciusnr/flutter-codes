import 'package:flutter/material.dart';
import 'package:si700_flutter/blocs/authbloc.dart';
import '../main.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: DefaultTabController(
          length: 1,
          initialIndex: 0,
          child: Scaffold(
              appBar: AppBar(title: Text("Vilists - Minha Conta")),
              drawer: Drawer(child: generateListViewDrawerLayout(context)),
              body: TabBarView(
                children: [ContainerMyAccount()],
              )),
        ));
  }
}

Widget ContainerMyAccount() {
  var authBloc = new AuthBloc();

  return SingleChildScrollView(
      child: Column(children: [
    Container(
      margin: new EdgeInsets.only(top: 10, bottom: 20.0),
      child: Text("Minha Conta",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
    ),
    Container(
        margin: new EdgeInsets.symmetric(horizontal: 30.0),
        child: FutureBuilder(
            initialData: "Carregando...",
            future: authBloc.getUserHttp(),
            builder: (BuildContext context, AsyncSnapshot<String> text) {
              return new Text(text.data,
                  style: TextStyle(
                    fontSize: 25,
                    height: 1.25,
                  ));
            })),
    Padding(
      padding: const EdgeInsets.all(20.0),
    ),
    Padding(
      padding: const EdgeInsets.all(3.0),
    ),
    Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "Crie uma lista de tarefas!",
        style: TextStyle(
          fontSize: 18,
          height: 1.25,
          color: Colors.green,
        ),
      ),
    ),
  ]));
}
