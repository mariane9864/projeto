import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/telainicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Telainicial(),
    );
  }
}

class ferramentas extends StatefulWidget {
  const ferramentas({super.key});
  @override
  State<ferramentas> createState() => _ferramentasState();
}

class _ferramentasState extends State<ferramentas> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ferramentas"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            //lanca
            width: 20,
            child: Image.asset("lib/img/imagem9.jpg"),
          ),
          Container(
            child: Text(
                "Anel comum:\nPreço: 10 po,\nBônus na CA: +2,\nBônus Máximo de Destreza: +6,\nDdano multiplicado:	x50,\nChance de Falha Arcana : 10%,\nPeso: 1,5 kg."),
          ),
          Container(
            width: 20,
            child: Image.asset("lib/img/imagem10.jpg"),
          ),
          Container(
            child: Text(
                "anel raro : Preço:	25 po	, Bônus na CA : +4, Bônus Máximo de Destreza:	+12,dano multiplicado : x100	,Chance de Falha Arcana : 30%	, Peso:	3,5 kg"),
          ),
          Container(
            width: 20,
            child: Image.asset("lib/img/imagem11.jpg"),
          ),
          Container(
            child: Text(
                "anel indestrutivel: Preço:	50 po	, Bônus na CA : +40, Bônus Máximo de Destreza:	+30,dano multiplicado:	x300	,Chance de Falha Arcana : 60%	,Peso:	4,5 kg"),
          ),
          Container(
            width: 20,
            child: Image.asset("lib/img/imagem12.jpg"),
          ),
          Container(
            child: Text(
                "anel dragão :Preço:	100.000 po	, Bônus na CA : +100, Bônus Máximo de Destreza:	+160,dano multiplicado: x500,Chance de Falha Arcana : 0%	, Deslocamento—(100 m.)	(600 m.),Peso:	3,5 kg"),
          ),
        ],
      ),
    );
  }
}
