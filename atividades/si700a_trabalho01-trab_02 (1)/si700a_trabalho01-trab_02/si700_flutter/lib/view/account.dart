import 'package:flutter/material.dart';
import 'package:si700_flutter/blocs/authbloc.dart';
import '../main.dart';

class Account extends StatelessWidget {
  var authBloc = new AuthBloc();

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
                children: [
                  Container(
                      margin: new EdgeInsets.symmetric(horizontal: 30.0),
                      child: FutureBuilder(
                        initialData: "Carregando...",
                          future: authBloc.getUserHttp(),
                          builder: (BuildContext context,
                              AsyncSnapshot<String> text) {
                            return new Text(text.data,
                                style: TextStyle(
                                  fontSize: 30,
                                  height: 1.25,
                                ));
                          }))
                ],
              )),
        ));
  }
}
