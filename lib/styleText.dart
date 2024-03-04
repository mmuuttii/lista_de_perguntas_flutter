// ignore_for_file: file_names, duplicate_ignore, duplicate_ignore, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace, sized_box_for_whitespace, prefer_const_constructors


import 'package:flutter/material.dart';

class textoEstilo extends StatelessWidget {

  final String texto;
  
  textoEstilo(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      child: Text(texto, style: TextStyle(fontSize: 30),  textAlign: TextAlign.center,)
      );
  }
}