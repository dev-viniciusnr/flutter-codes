import 'package:flutter/material.dart';
import 'package:si700_flutter/blocs/addlistbloc.dart';
import '../main.dart';
class ListFormat {
  String titulo;
  String desc;
}
class AddList extends StatelessWidget {
  var addlistBloc = new AddListBloc();
  @override
  Widget build(BuildContext context) {
    bool checkedValue = false;
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DefaultTabController(
        length: 1,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(title: Text("Vilists - Lista de Tarefas")),
          drawer: Drawer(child: generateListViewDrawerLayout(context)),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: addlistBloc.tituloCtl,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Titulo da Lista',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: addlistBloc.descricaoCtl,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Descrição da Lista',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 10.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      addlistBloc.adicionarlista(context);

                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(content: Text('Parabens!! Usuario criado')));
                    },
                    child: Text(
                      'Criar',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
