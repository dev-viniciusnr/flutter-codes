  
  import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


dialog(var title, var context, var message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
          );
        });
  }
