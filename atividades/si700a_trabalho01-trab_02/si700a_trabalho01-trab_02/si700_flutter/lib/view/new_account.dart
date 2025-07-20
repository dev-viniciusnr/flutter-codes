import 'package:flutter/material.dart';
import 'package:si700_flutter/blocs/accountbloc.dart';
import '../main.dart';

class NewAccount extends StatelessWidget {
  var newaccountBloc = new NewAccountBloc();
  @override
  Widget build(BuildContext context) {
    bool checkedValue = false;
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DefaultTabController(
        length: 1,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(title: Text("Vilists - Criar Conta")),
          drawer: Drawer(child: generateListViewDrawerLayout(context)),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: newaccountBloc.emailCtl,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: newaccountBloc.senhaCtl,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Senha',
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
                      newaccountBloc.novaconta(context);

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
