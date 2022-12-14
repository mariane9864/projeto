import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter_application_1/tela2.dart';
import 'package:flutter/material.dart';

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
      home: MyApp(),
    );
  }
}

class criaturas extends StatefulWidget {
  const criaturas({super.key});

  @override
  State<criaturas> createState() => _criaturasState();
}

class _criaturasState extends State<criaturas> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("criaturas"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            //logo
            width: 2,
            child: Image.asset("lib/img/logo.jpeg"),
          ),
          Container(
            width: 20,
            child: Image.asset("lib/img/imagem14.jpeg"),
          ),
          Container(
            child: Text(
                "Enquanto a raça humana predomina em terra firme e os Elfos terrestres perderam seu reino, no mar encontramos vastos reinos dominados por seus primos submarinos.Diferente dos Elfos da superfície, os Elfos-do-mar não perderam seu reino, nem foram abandonados por sua divindade padroeira. Veneram Oceano, o Deus dos Mares, a quem creditam sua criação. Assim como sua divindade, buscam dominar as vastidões aquáticas do mundo."),
          ),
          Container(
            width: 20,
            child: Image.asset("lib/img/imagem16.jpeg"),
          ),
          Container(
            child: Text(
                "Os dragões são animais lendários fabulosos, geralmente representados como uma enorme serpente alada que expele fogo pelas narinas. Seu tipo biológico situa-se entre o réptil e o sáurio (dinossauros): cabeça ornada com uma grande crista, poderosos cifres, presas enormes, couro grosso e nodoso cobrindo todo o corpo até a cauda, não raro provida de esporas, possivelmente de tecido ósseo ou cartilaginoso. Dotado de poderes extraordinários, o hálito dos Dragões é considerado venenoso e seu sangue, quando derramado em batalha ou na hora da morte, é igualmente fatal para aquele que for atingido por respingos dos líquido ou traz poderes inimagináveis, como no caso de Siegfried que lhe deu a imortalidade."),
          ),
          Container(
            width: 20,
            child: Image.asset("lib/img/imagem15.jpeg"),
          ),
          Container(
            child: Text(
                "Acredita-se que a origem dos zumbis venha de práticas de uma religião da África. Lá, através do uso de vodu, dize-se ser possível trazer de volta à vida uma pessoa para servir como escrava do feiticeiro (não confundir esses feiticeiros com necromancers). Existe também uma segunda crença que diz ser possível, através do uso de certas substâncias especiais, roubar a alma de uma pessoa viva, que então passaria a agir semelhantemente a um zumbi, obecendo a pessoa que roubou sua alma. Por causa disso, é possível existir zumbis que são idênticos aos humanos, com a única diferença de que não possuem vontade própria."),
          ),
          Container(
            width: 20,
            child: Image.asset("lib/img/imagem13.jpeg"),
          ),
          Container(
            child: Text(
                "Ainda não se sabe a origem de ambas as criaturas, mas é bem possível de que estejam em guerra há bem mais tempo que a própria existência dos humanos. Com os Elementais humanos crescendo em números com o passar dos séculos, os dois grupos passaram a fazer alianças com os humanos, levando a guerra para a Terra, embora os Kenomianos ajam com mais frequência sozinhos."),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: 150,
                      child: SingleChildScrollView(
                        child: Text(
                          "ir para tela inicial",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22),
                        ),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
