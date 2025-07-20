import 'package:flutter/material.dart';
import 'package:aplicativo/view/tela1/tela1_main.dart';
import 'package:aplicativo/view/tela2/tela2_main.dart';
import 'package:aplicativo/view/tela3/tela3_main.dart';

class MyTabBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Scaffold(
              appBar: AppBar(
                title: Text("TabBarLayout"),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text("Primeira Tela"),
                      icon: Icon(Icons.access_alarm),
                    ),
                    Tab(icon: Icon(Icons.account_box)),
                    Tab(icon: Icon(Icons.access_time))
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
