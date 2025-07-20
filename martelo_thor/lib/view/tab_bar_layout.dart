import 'package:flutter/material.dart';
import 'package:martelo_thor/view/tela1/tela1_main.dart';
import 'package:martelo_thor/view/tela2/tela2_main.dart';
import 'package:martelo_thor/view/tela3/tela3_main.dart';

class MyTabBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Scaffold(
              appBar: AppBar(
                title: Text("Atividade3 - Apresentação"),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text("Vinícius"),
                      icon: Icon(Icons.account_box),
                    ),
                    Tab(
                      child: Text("Vitor"),
                      icon: Icon(Icons.account_box),
                    ),
                    Tab(
                      child: Text("Projeto"),
                      icon: Icon(Icons.android),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  MainTela1(),
                  MainTela2(),
                  MainTela3(),
                ],
              )),
        ));
  }
}
