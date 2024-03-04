// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';
import './styleText.dart';
import './asnwer.dart';

void main(List<String> args) {
  runApp(perguntas());
}

class perguntas extends StatefulWidget {
  const perguntas({super.key});

  @override
  State<perguntas> createState() => _perguntasState();
}

class _perguntasState extends State<perguntas> {
    int selecionarPergunta = 0;

  final List tiposDePerguntas = const [
     {
      'texto':'Qual sua cor favorita?',
      'respostas':['verde','vermelho','preto','azul']
     },
     {
      'texto' : 'Qual animal favorito?',
      'respostas' : [ 'cachorroo' , 'gato'  , 'urso', 'águia']
     },
     {
      'texto' : 'Qual é sua banda favorita?',
      'respostas' : ['iron maiden', 'lana del rey', 'capital inicial', 'angra']

     }
    ];


   
    void mudarPerguntas (){
      if(temPerguntaSelecionada){

        setState(() {
          selecionarPergunta++;
          
        });
      }


    }

   
    bool get temPerguntaSelecionada {

      return selecionarPergunta < tiposDePerguntas.length;
    }


  @override
  Widget build(BuildContext context) {

    List<String> respostas = temPerguntaSelecionada ? tiposDePerguntas[selecionarPergunta].cast()['respostas'] : 
    [] ;
    
    
    List<Widget> widget =respostas.map((t) => respostaAlternativas(t,mudarPerguntas)).toList();



  //  for (var textoRespo in tiposDePerguntas[selecionarPergunta].cast()['respostas']) {
   //   respostas.add(respostaAlternativas(textoRespo,mudarPerguntas));
 //   }




    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas',
          style: TextStyle(color: Colors.white),
          
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          ),
          body: temPerguntaSelecionada ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(
              child: 
                textoEstilo(tiposDePerguntas[selecionarPergunta]['texto'].toString()),
                ),
              ...widget,


         
            

          ],)
          : Center(
            child: Text('Parabéns',
            style: TextStyle(fontSize: 25),),
          )
          ),
    );
  }
}

