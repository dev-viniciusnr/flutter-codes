import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:martelo_thor/model/login.dart';

class MainTela3 extends StatelessWidget {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  LoginData loginData = new LoginData();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Form(
          key: formKey,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}

Widget usernameFormField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    validator: (String inValue) {
      if (inValue.length == 0) {
        return "Insira um nome de usuário";
      }
      return null;
    },
    onSaved: (String inValue) {
      LoginData.username = inValue;
    },
    decoration: InputDecoration(
        hintText: "user@domain.br", labelText: "Username (E-mail Adress)"),
  );
}

Widget passwordFormField() {
  return TextFormField(
    obscureText: true,
    validator: (String inValue) {
      if (inValue.length < 10) {
        return "Minímo de 10 letras";
      }
      return null;
    },
    onSaved: (String inValue) {
      LoginData.password = inValue;
    },
    decoration: InputDecoration(
      labelText: "Insira uma senha forte",
    ),
  );
}

Widget submitButton() {
  return RaisedButton(
    child: Text("Log In!"),
    onPressed: () {
      if (formKey.currentState.validate()) {
        formKey.currentState.save();
        LoginData.doSomething();
      }
    },
  );
}
