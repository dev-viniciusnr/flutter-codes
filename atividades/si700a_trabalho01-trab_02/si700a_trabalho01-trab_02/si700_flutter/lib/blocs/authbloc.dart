import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:si700_flutter/view/logado.dart';

class AuthBloc {
  var loginCtl = TextEditingController();
  var passwdCtl = TextEditingController();
  var userCtl = TextEditingController();
  var result = "Preencha os dados para entrar";

  dialog(var context, var message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Autenticação "),
            content: Text(message),
          );
        });
  }

  login(var context) async {
    var login = loginCtl.value.text;
    var passwd = passwdCtl.value.text;

    var message = await postHttp({'login': login, 'passwd': passwd});
    if (message == "ok") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyAccount()),
      );
      // Navigator.of(context).pushNamed("Minha Conta - Logado");
    } else
      dialog(context, message);
  }

  Future<String> getUserHttp() async {
    var data;
    try {
      var response = await Dio().get('http://localhost:3000/user');
      print(response.data);
      data = (response.data);
    } catch (e) {
      print(e);
      return "error";
    }

    return "Ola ${data['login']}";
  }

  Future<String> postHttp(var datauser) async {
    print(datauser);
    try {
      var response = await Dio()
          .post('http://localhost:3000/auth', data: jsonEncode(datauser));
      return (response.data['message']);
    } catch (e) {
      print(e);
      return "error";
    }
  }
}

class AddListBloc {
  var tituloCtl = TextEditingController();
  var descricaoCtl = TextEditingController();
}
