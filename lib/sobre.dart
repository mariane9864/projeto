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

class tela4 extends StatefulWidget {
  const tela4({Key? key}) : super(key: key);

  @override
  State<tela4> createState() => _tela4State();
}

class _tela4State extends State<tela4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("sobre o aplicativo"),
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
                ("Qual nosso intuito:"),
                style: TextStyle(
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              )),
              Container(
                child: Text(
                    "Nosso intuito foi desenvolver esse aplicativo para facilitar qe os jogadores tenham mais facilidade para imaginar como serão e oque faram durante o jogo"),
              ),
              Container(
                child: Text(
                    "Alem disso colocamos opções para poder facilitar os jogadores a ver dados sobre monstros qe lutarão e armamentos"),
              ), Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Telainicial()));
            },
            child: Container(
                padding: EdgeInsets.all(20),
                width: 150,
                child: Text(
                  "voltar para tela inicial",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22),
        ))
        )]
        )])
        );
   
  
      
    
  }
}
