import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:si700_flutter/blocs/utils.dart';
import 'package:si700_flutter/view/lists.dart';

class AddListBloc {
  var tituloCtl = TextEditingController();
  var descricaoCtl = TextEditingController();

  adicionarlista(var context) async {
    var titulo = tituloCtl.value.text;
    var descricao = descricaoCtl.value.text;

    var res = await postHttp({"titulo": titulo, "desc": descricao});
    if (res == "ok") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Lists()),
      );
    } else
      dialog("Lista", context, res);
  }

  Future<List> obterLista() async {
    return await this.getHttp();
  }

  Future<String> postHttp(var datauser) async {
    // print(datauser);
    try {
      var response = await Dio()
          .post('http://localhost:3000/lista', data: jsonEncode(datauser));
      return (response.data['message']);
    } catch (e) {
      print(e);
      return "error";
    }
  }

  Future<List> getHttp() async {
    try {
      var response = await Dio().get('http://localhost:3000/lista');
      var lista = (response.data['lista']);
      print(lista);
      return lista;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
