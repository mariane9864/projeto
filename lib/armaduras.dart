import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/telainicial.dart';

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

class armaduras extends StatefulWidget {
  const armaduras({Key? key}) : super(key: key);

  @override
  State<armaduras> createState() => _armadurasState();
}

class _armadurasState extends State<armaduras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("segunda tela"),
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
            child: Image.asset("assets/img/imagem1.png"),
          ),
          Container(
            child: Text(
                "armadura Couro Preço:	10 po	, Bônus na CA : +2, Bônus Máximo de Destreza:	+6, Penalidade por Armadura :	0	,Chance de Falha Arcana : 10%	, Deslocamento—(9 m.)	(6 m.),Peso:	7,5 kg."),
          ),
          Container(
            width: 20,
            child: Image.asset("assets/img/imagem2.jpg"),
          ),
          Container(
            child: Text(
                "armadura Couro reforçado: Preço:	25 po	, Bônus na CA : +4, Bônus Máximo de Destreza:	+12, Penalidade por Armadura :	1%	,Chance de Falha Arcana : 30%	, Deslocamento—(9 m.)	(6 m.),Peso:	8,5 kg"),
          ),
          Container(
            width: 20,
            child: Image.asset("assets/img/imagem3.jpg"),
          ),
          Container(
            child: Text(
                "armadura ferro Preço:	50 po	, Bônus na CA : +40, Bônus Máximo de Destreza:	+30, Penalidade por Armadura :	20%	,Chance de Falha Arcana : 60%	, Deslocamento—(20 m.)	(40 m.),Peso:	17,5 kg"),
          ),
          Container(
            width: 20,
            child: Image.asset("assets/img/imagem4.png"),
          ),
          Container(
            child: Text(
                "armadura de escama de dragão Preço:	100.000 po	, Bônus na CA : +100, Bônus Máximo de Destreza:	+160, Penalidade por Armadura :	0%	,Chance de Falha Arcana : 0%	, Deslocamento—(100 m.)	(600 m.),Peso:	15,5 kg"),
          ),
        ],
      ),
    );
  }
}
