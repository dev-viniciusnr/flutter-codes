import 'dart:js';

import 'package:flutter/material.dart';
import 'package:si700_flutter/blocs/authbloc.dart';
import '../main.dart';

class MyCustomFormState extends StatelessWidget {
  var authBloc = new AuthBloc();
  @override
  Widget build(BuildContext context) {
    bool checkedValue = false;
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DefaultTabController(
        length: 1,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(title: Text("Vilists - Minha Conta")),
          drawer: Drawer(child: generateListViewDrawerLayout(context)),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: authBloc.loginCtl,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Usuario',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: authBloc.passwdCtl,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Senha',
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: CheckboxListTile(
                    title: Text("Lembrar"),
                    value: checkedValue,
                    onChanged: (newValue) {},
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    authBloc.login(context);
                    

                    // ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(content: Text('Parabens!! Usuario criado')));
                  },
                  child: Text('Criar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
