import 'package:flutter/material.dart';
import 'package:vilists/main.dart';

class Account extends StatelessWidget {
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
                    child: Text(
                      "Página de Minha Conta",
                      style: TextStyle(
                        fontSize: 30,
                        height: 1.25,
                      ),
                    ),
                  )
                ],
              )),
        ));
  }
}
