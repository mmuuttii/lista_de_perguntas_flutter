// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class respostaAlternativas extends StatelessWidget {
  final String estiloResposta;
  final void Function() quandoSelecionado;

  respostaAlternativas(this.estiloResposta,this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      
      child:
      ElevatedButton(
        onPressed: quandoSelecionado,
      style: ElevatedButton.styleFrom(
         backgroundColor: Colors.black,
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0)
         )// Define a cor de fundo do botão
        ),
             child: 
             Text(estiloResposta,
             style: TextStyle(fontSize: 18,color: Colors.amber),),
      )
    );
  }
}