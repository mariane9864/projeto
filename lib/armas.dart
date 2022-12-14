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

class armas extends StatefulWidget {
  const armas({Key? key}) : super(key: key);

  @override
  State<armas> createState() => _armasState();
}

class _armasState extends State<armas> {
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
            child: Image.asset("assets/img/imagem5.jpg"),
          ),
          Container(
            child: Text(
                "espada de madeira: Preço:	10 po	, Bônus na CA : +2, Bônus Máximo de Destreza:	+6,dano :	50	,Chance de Falha Arcana : 10%	, Peso:	1,5 kg."),
          ),
          Container(
            width: 20,
            child: Image.asset("assets/img/imagem6.png"),
          ),
          Container(
            child: Text(
                "espada de ferro : Preço:	25 po	, Bônus na CA : +4, Bônus Máximo de Destreza:	+12,dano : 100	,Chance de Falha Arcana : 30%	, Peso:	3,5 kg"),
          ),
          Container(
            width: 20,
            child: Image.asset("assets/img/imagem7.jpg"),
          ),
          Container(
            child: Text(
                "espada de rocha indestrutivel: Preço:	50 po	, Bônus na CA : +40, Bônus Máximo de Destreza:	+30,dano :	300	,Chance de Falha Arcana : 60%	,Peso:	4,5 kg"),
          ),
          Container(
            width: 20,
            child: Image.asset("assets/img/imagem8.png"),
          ),
          Container(
            child: Text(
                "espada de dragão Preço:	100.000 po	, Bônus na CA : +100, Bônus Máximo de Destreza:	+160,dano : 500,Chance de Falha Arcana : 0%	, Deslocamento—(100 m.)	(600 m.),Peso:	3,5 kg"),
          ),
        ],
      ),
    );
  }
}
