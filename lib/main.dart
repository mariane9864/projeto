import 'package:flutter/material.dart';
import 'package:flutter_application_1/telainicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Erro Critico",
        theme: ThemeData(primarySwatch: Colors.red),
        home: const MyLogin());
  }
}

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);
  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPass = TextEditingController();
  bool _eye = true;

  String emailRegister = "email@email.com";
  String passRegister = "1234";

  void _validaLogin(email, senha) {
    if (email == emailRegister && senha == passRegister) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Telainicial()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ERRO CRITICO"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 200,
              child: Image.asset("lib/img/logo.jpeg"),
            ),
            Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                  decoration: InputDecoration(labelText: "Email"),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 22),
                  controller: _ctrlEmail),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 50, right: 50, top: 30, bottom: 30),
              child: TextField(
                  decoration: InputDecoration(
                    labelText: "Senha",
                    suffixIcon: IconButton(
                      icon: (_eye)
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _eye = !_eye;
                        });
                      },
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 22),
                  obscureText: _eye,
                  controller: _ctrlPass),
            ),
            ElevatedButton(
                onPressed: () {
                  _validaLogin(_ctrlEmail.text, _ctrlPass.text);
                },
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: 150,
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22),
                    )))
          ],
        ),
      ),
    );
  }
}
