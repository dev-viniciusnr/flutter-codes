import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:si700_flutter/blocs/utils.dart';

class NewAccountBloc {
  var emailCtl = TextEditingController();
  var senhaCtl = TextEditingController();

  novaconta(var context) async {
    var email = emailCtl.value.text;
    var senha = senhaCtl.value.text;
    var res=await postHttp({"login":email, "passwd":senha});
    
    dialog("Login", context, res);
    

  }


  Future<String> postHttp(var datauser) async {
    print(datauser);
    try {
      var response = await Dio()
          .post('http://localhost:3000/user', data: jsonEncode(datauser));
      var message= (response.data['message']) ;
      return message;
    } catch (e) {
      print(e);
      return "error";
    }
  }
}
