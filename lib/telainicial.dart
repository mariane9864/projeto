import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/armaduras.dart';
import 'package:flutter_application_1/armas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/criaturas.dart';
import 'package:flutter_application_1/telaferramentas.dart';
import 'package:flutter_application_1/sobre.dart';
import 'package:flutter_application_1/telaferramentas.dart';

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

class Telainicial extends StatefulWidget {
  const Telainicial({super.key});
  @override
  State<Telainicial> createState() => _TelainicialState();
}

class _TelainicialState extends State<Telainicial> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela inicial"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
              child: Text(
            ("Historia"),
            style:
                TextStyle(fontSize: 30, decoration: TextDecoration.underline),
          )),
          Container(
            child: Text(
                "Dessa vez, a campanha inteira se foca no transporte de uma carga de animais exóticos para um zoológico que será aberto em Tyrondir. O transporte será marítimo, atravessando o mar negro de Collen até Tyrondir. Os PJs enfrentarão as situações mais adversas: terão que conseguir a liberação da carga com uma família de mafiosos, lidar com perigos marítimos, encalhar numa ilha deserta e enfrentar mortos vivos, elfos do mar , dragões e animais enquanto tentam consertar o barco e depois lidar com um pirata poderoso antes de chegarem a salvo em Tyrondir."),
          ),
          Container(
              child: Text(
            ("Deescrição"),
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          )),
          Container(
            child: Text(
                "Bem poderemos usar essa historia como inicial para poder criar muitas historias com vós jogadores, e que começa agora sua aventura apartir de voce"),
          ),
          Container(
            child: Text(
                "Logo abaixo temos descrição sobre os itens qe voce podera usar nessa historia:"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => armas()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: 150,
                      child: Text(
                        "Descrição de armas",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      )))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ferramentas()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: 150,
                      child: Text(
                        "descrição de ferramentas",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      )))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => armaduras()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: 150,
                      child: Text(
                        "descrição de armaduras",
                        style: TextStyle(fontSize: 22),
                      )))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => criaturas()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: 150,
                      child: Text(
                        "descrição de criaturas",
                        style: TextStyle(fontSize: 22),
                      )))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => tela4()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: 150,
                      child: Text(
                        "sobre o app",
                        style: TextStyle(fontSize: 22),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
